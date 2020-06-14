//
//  ViewController.swift
//  AnotherTry
//
//  Created by Irina Cercel on 05/02/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import UIKit
import SceneKit
import ARKit
import CoreLocation

class ARView: UIViewController, Storyboarded, ARSCNViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var sceneView: ARSCNView!
    
    var arVM: ARViewModel!
    var locationManager: CLLocationManager!

    var popUpView: PopUpView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let coordinates = getCoordinates()

        DispatchQueue.main.async {
            self.arVM.getPlanetaryPositions(latitude: coordinates.0, longitude: coordinates.1) { data -> Void in
                if let positions = self.arVM.getPositions() {
                    self.setPositions(planetaryPositions: positions)
                    self.setScene()
                }
            }
        }
        gestureRecognizer()
    }
    
    func setPositions(planetaryPositions: [String: (Float, Float, Float)]) {
//        print(planetaryPositions)
        for planet in arVM.getPlanets() {
//            print(planet.name)
            if let plnt = planetaryPositions[planet.name] {
                if planet.name == "Mars" {
                    planet.node!.childNodes[0].position = SCNVector3(plnt.0, plnt.1 - 10, plnt.2 - 5)
                } else if planet.name == "Jupiter" {
                    planet.node!.childNodes[0].position = SCNVector3(plnt.0, plnt.1 - 15, plnt.2 - 10)
                } else if planet.name == "Pluto" {
                    planet.node!.childNodes[0].position = SCNVector3(plnt.0, plnt.1 + 5, plnt.2 - 10)
                } else {
                    planet.node!.childNodes[0].position = SCNVector3(plnt.0, plnt.1, plnt.2)
                }
            }
            if planet.name == "Earth" {
                planet.node!.childNodes[0].position = SCNVector3(0, 0, -10)
            }
            
        }
    }
    
    func getCoordinates() -> (String, String) {
        locationManager = CLLocationManager()
                locationManager.requestWhenInUseAuthorization()
        //        locationManager.headingFilter = kCLHeadingFilterNone
                
                var currentLocation: CLLocation!
                if CLLocationManager.authorizationStatus() == .authorizedWhenInUse ||
                   CLLocationManager.authorizationStatus() ==  .authorizedAlways {
                    currentLocation = locationManager.location
                    locationManager.delegate = self
                    locationManager.startUpdatingHeading()
                    self.locationManager.distanceFilter = kCLDistanceFilterNone
                    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
                    self.locationManager.startUpdatingLocation()
                }
        
        // imi da numarul mare
        let latitudeNR = Double(round(10000*currentLocation.coordinate.latitude)/10000)
        let longitudeNR = Double(round(10000*currentLocation.coordinate.longitude)/10000)
        
        let latitude_orientation = latitudeNR >= 0 ? " N": " S"
        let longitude_orientation = longitudeNR >= 0 ? " E": " W"
        let latitude = String(latitudeNR) + latitude_orientation
        let longitude = String(longitudeNR) + longitude_orientation
        
        return (latitude, longitude)
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
//        print(cardinalValue(from: newHeading.trueHeading))
    }
    
    func setNavbar() {
        overrideUserInterfaceStyle = .dark
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
        navigationController?.navigationBar.tintColor = UIColor.systemBlue
    }
    
    func setScene() {
        let scene = SCNScene()
        sceneView.scene = scene
        if let arVM = arVM {
            let planets = arVM.getPlanets()
            for planet in planets{
                if let node = planet.node{
                    self.sceneView.scene.rootNode.addChildNode(node)
                }
            }
        }
    }
    
    //press a planet
    private func gestureRecognizer() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapped))
        sceneView.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func tapped(recogniser: UIGestureRecognizer) {
        
        let scnView = recogniser.view as! SCNView
        let touchLocation = recogniser.location(in: scnView)
        let hitResult = scnView.hitTest(touchLocation, options: [:])
        
        if !hitResult.isEmpty {
            let nodeName = hitResult[0].node.name
            if let name = nodeName {
                let planet: CosmicObject? = arVM?.getPlanet(planetName: name)
                if let planet = planet {
                    navigationController?.setNavigationBarHidden(true, animated: true)
                    let screenSize = UIScreen.main.bounds.size
                        //            popUpView.frame.size = CGSize(width: view.frame.width - 20, height: view.frame.height - 30)
                    let popUpViewModel = PopUpViewModel(coordinator: arVM?.coordinator as! Coordinator, planet: planet)
                        popUpView = PopUpView(frame: CGRect(x: 10, y: self.view.frame.height, width: self.view.frame.width - 20, height: self.view.frame.height - 30), viewModel: popUpViewModel)

                    view.addSubview(self.popUpView)
                    popUpView.transform = CGAffineTransform(translationX: 0, y: screenSize.height)
                                    
                    UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0,options: .curveEaseInOut, animations: {
                        self.popUpView.transform = CGAffineTransform(translationX: 0, y: 0)
                        self.popUpView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
                        self.popUpView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
                        self.popUpView.widthAnchor.constraint(equalToConstant: self.view.frame.width - 20).isActive = true
                        self.popUpView.heightAnchor.constraint(equalToConstant: self.view.frame.height - 30).isActive = true
                    }, completion: nil)
                                
                    popUpView.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handleDragGesture)))
                }
            }
        }
    }
    
    @objc func handleDragGesture(gesture: UIPanGestureRecognizer) {
        
        if gesture.state == .began {
        } else if gesture.state == .changed {
            let screenSize = UIScreen.main.bounds.size
            UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0,options: .curveEaseInOut, animations: {
                self.popUpView.transform = CGAffineTransform(translationX: 0, y: screenSize.height)
                }, completion: nil)
        } else if gesture.state == .ended {
            navigationController?.setNavigationBarHidden(false, animated: true)
            self.popUpView.removeFromSuperview()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
        
        setNavbar()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate
    
/*
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
*/
    func locationManagerShouldDisplayHeadingCalibration(_ manager: CLLocationManager) -> Bool {
        return true
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Location Manager failed: \(error)")
    }
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}
