//
//  PlanetDescriptionView.swift
//  AnotherTry
//
//  Created by Irina Cercel on 23/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import UIKit

class PlanetDescriptionView: UIViewController, Storyboarded {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var descriptionView: UIView!
    
    var planetDescriptionVM: PlanetDescriptionViewModel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .dark
        
        let planetName = navigationController?.navigationBar.topItem?.title ?? ""
        
        let attributedString = NSMutableAttributedString.init(string: planetDescriptionVM.title)
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range:
            NSRange.init(location: 0, length: attributedString.length));
        titleLabel.attributedText = attributedString
        descriptionLabel.text = planetDescriptionVM.description
        
        setBackground(planetName: planetName)
    }
    
    
    func setBackground(planetName: String) {
        descriptionView.backgroundColor = UIColor.clear
        overrideUserInterfaceStyle = .dark
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor, PlanetColor[planetName]?.cgColor ?? UIColor.purple.cgColor]
//        gradientLayer.locations = [0.0, 0.5, 0.8]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
