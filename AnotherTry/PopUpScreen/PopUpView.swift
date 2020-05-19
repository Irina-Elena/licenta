//
//  PopUpView.swift
//  AnotherTry
//
//  Created by Irina Cercel on 23/04/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import UIKit
import SceneKit

class PopUpView: UIView {
    var planetScene: SCNView = SCNView()
    var nameLabel = UILabel()
    
    var shortDescriptionLabel: UILabel = {
        let shortDescriptionLabel = UILabel()
        shortDescriptionLabel.textColor = .white
        shortDescriptionLabel.font = UIFont(name: "Futura", size: 18)
        shortDescriptionLabel.sizeToFit()
        shortDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return shortDescriptionLabel
    }()

    var showMoreButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show more!", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
    }()
    
    var lineBreaker: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var shortDescriptions: [String] = []
    
    init(frame: CGRect, planetName: String, shortDescription: String, quickFacts: [String]) {
        super.init(frame: frame)
        
        shortDescriptions = quickFacts
        shortDescriptionLabel.text = shortDescription
        setViewCharacteristics()
        setPlanetNameLabel(planetName: planetName)
        lineBreaker.backgroundColor = PlanetColor[planetName]
        
        addSubview(planetScene)
        addSubview(nameLabel)
        addSubview(shortDescriptionLabel)
        addSubview(lineBreaker)
        addSubview(showMoreButton)
                
        setScene(planetName: planetName)
        setNameLabelConstraint()
        setShortLabelConstraint()
        setBreakerConstraint()
        setShowMoreButtonConstraint()
        designButton(button: showMoreButton)
        setInfoLables()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setPlanetNameLabel(planetName: String){
        nameLabel.text = planetName
        nameLabel.textColor = PlanetColor[planetName]
        nameLabel.font = UIFont(name: "Copperplate", size: 30)
        nameLabel.sizeToFit()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setViewCharacteristics() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .black
        clipsToBounds = true
        layer.cornerRadius = 20
    }
    
    func setScene(planetName: String) {
        let scene = SCNScene()
        planetScene.scene = scene
        planetScene.backgroundColor = .black
        planetScene.allowsCameraControl = true
        
//        let particleSystem = SCNParticleSystem()
//        particleSystem.birthRate = 1000
//        particleSystem.particleSize = 1.45
//        particleSystem.particleLifeSpan = 5
//        particleSystem.particleColor = .yellow
//
//        let particlesNode = SCNNode()
//        particlesNode.addParticleSystem(particleSystem)
        
//        planetScene.scene?.rootNode.addChildNode(particlesNode)
        let planet = SCNScene(named: "art.scnassets/" + planetName + ".scn")
        if planetName == "Uranus" {
            planet?.rootNode.eulerAngles = SCNVector3(0, -100, 0)
        }
        planet!.rootNode.childNodes[0].runAction(SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: 8, z: 0, duration: 10)))
        planetScene.scene!.rootNode.addChildNode(planet!.rootNode)
        
        setSceneConstraint()
    }
    
    func designButton(button: UIButton) {
        button.setTitleColor(PlanetColor[nameLabel.text!], for: .normal)
        button.backgroundColor = UIColor.black
        button.layer.cornerRadius = 15
        
        //button shadow
        button.layer.shadowColor = UIColor.white.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 0.2)
        button.layer.shadowOpacity = 0.5
        button.layer.shadowRadius = 6
    }
    
    func setSceneConstraint() {
        planetScene.translatesAutoresizingMaskIntoConstraints = false
        planetScene.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        planetScene.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        planetScene.topAnchor.constraint(equalTo: topAnchor).isActive = true
        planetScene.heightAnchor.constraint(equalToConstant: 240).isActive = true
    }
    
    func setShowMoreButtonConstraint() {
        showMoreButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
        showMoreButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        showMoreButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        showMoreButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
    }
    
    func setNameLabelConstraint() {
        nameLabel.topAnchor.constraint(equalTo: planetScene.bottomAnchor, constant: 10).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
    }
    
    func setShortLabelConstraint() {
        shortDescriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5).isActive = true
        shortDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
    }
    
    func setBreakerConstraint() {
        lineBreaker.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        lineBreaker.topAnchor.constraint(equalTo: shortDescriptionLabel.bottomAnchor).isActive = true
        lineBreaker.widthAnchor.constraint(equalToConstant: frame.width-20).isActive = true
        lineBreaker.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
    
    func setInfoLables() {
//        let size: CGFloat = (showMoreButton.layer.position.y - shortDescriptionLabel.frame.origin.y)/((CGFloat(shortDescriptions.count)+1))
        let size: CGFloat = 20
        var lastObject: UILabel = lineBreaker
        for (index,description) in shortDescriptions.enumerated() {
            let infoLabel = UILabel()
            setLabelCharacteristics(infoLabel: infoLabel, description: description)
            addSubview(infoLabel)
            setLabelConstraint(infoLabel: infoLabel, lastObject: lastObject, size: size)
            
            lastObject = infoLabel
            if index<shortDescriptions.count-1{
                let star = UIImage(systemName: "star.fill")
                let starView = UIImageView(image: star)
                starView.tintColor = .white
                starView.contentMode = .scaleAspectFit
                addSubview(starView)
                setStarConstraint(star: starView, infoLabel: infoLabel, size: size)
            }
        }
    }
    
    func setLabelCharacteristics(infoLabel: UILabel,description: String) {
        infoLabel.text = description
        infoLabel.textColor = .white
        infoLabel.sizeToFit()
        infoLabel.textAlignment = .center
        infoLabel.numberOfLines = 0
    }
    
    func setLabelConstraint(infoLabel: UILabel, lastObject: UILabel, size: CGFloat) {
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        infoLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5).isActive = true
        infoLabel.topAnchor.constraint(equalTo: lastObject.bottomAnchor, constant: size - 2).isActive = true
    }
    
    func setStarConstraint(star starView: UIImageView, infoLabel: UILabel, size: CGFloat) {
        starView.translatesAutoresizingMaskIntoConstraints = false
        starView.topAnchor.constraint(equalTo: infoLabel.bottomAnchor,constant: size/8).isActive = true
        starView.heightAnchor.constraint(equalToConstant: 12).isActive = true
        starView.widthAnchor.constraint(equalToConstant: 12).isActive = true
        starView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
}
