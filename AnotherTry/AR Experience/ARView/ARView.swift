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
    
    var arVM: ARViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        prepareScene()
        createPlanets()
        setScene()
        gestureRecognizer()
    }
    
    func createPlanets() {
        let planets = [("Sun", 0, 0, 0), ("Mercury", 0, 1, -1), ("Venus", 7, 0, -5), ("Earth", 10, 10, 3),
                       ("Moon", 10, 12, 5), ("Mars", -5, 0, 0), ("Jupiter", -15, 12, -10), ("Saturn", -5, 5, 20),
                       ("Uranus", 5, -3, 30), ("Neptune", 30, 5 , 30), ("Pluto", -20, -3, 25)]
        if let arVM = arVM {
            arVM.setPlanets(planets: planets)
        }
    }
    
    func setScene() {
        let scene = SCNScene()
        sceneView.scene = scene
        if let arVM = arVM {
            let planets = arVM.getPlanets()
            for planet in planets{
                self.sceneView.scene.rootNode.addChildNode(planet.node)
            }
        }
    }
    
    func prepareScene() {
//        sun.rootNode.runAction(SCNAction.rotateBy(x: 0 , y: 5, z: 0, duration: 20))
//        mercury.rootNode.childNodes[0].runAction(SCNAction.rotateBy(x: 0 , y: 20, z: 0, duration: 20))
//        venus.rootNode.childNodes[0].runAction(SCNAction.rotateBy(x: 0, y: 20, z: 0, duration: 20))

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
            print(nodeName as Any)
        }
    }
   
    
    
    func getCoordinates(azimuth: Double, altitude: Double, radius: Double) -> (Double,Double,Double) {
        let x = radius * sin(azimuth) * sin(altitude)
        let y = radius * cos(altitude)
        let z = radius * sin(altitude) * cos(azimuth)
        return (x,y,z)
    }
    
    func theOldview() {
        let locationManager = CLLocationManager()
                locationManager.requestWhenInUseAuthorization()
        //        locationManager.headingFilter = kCLHeadingFilterNone
                
                var currentLocation: CLLocation!
                var currentAzimuth: Double!
                if CLLocationManager.authorizationStatus() == .authorizedWhenInUse ||
                   CLLocationManager.authorizationStatus() ==  .authorizedAlways {
                    currentLocation = locationManager.location
                    locationManager.delegate = self
                    locationManager.desiredAccuracy = kCLLocationAccuracyBest
                    
                    locationManager.headingOrientation = .portrait
                    locationManager.headingFilter = 0
                    locationManager.startUpdatingLocation()
                    locationManager.startUpdatingHeading()
                    
                }
                sleep(1)
        //        print(locationManager.heading)
                currentAzimuth = locationManager.heading?.magneticHeading
                print(currentAzimuth)
                print(coordinateString(currentLocation.coordinate.latitude, currentLocation.coordinate.longitude))
                
                // Set the view's delegate
                sceneView.delegate = self
                
                // Show statistics such as fps and timing information
                sceneView.showsStatistics = false
                
                // Create a new scene
                let planetSun = createPlanet(name: "Sun", a: 1.000000, e: 0.016709, w: 282.9404, N: 0.0, i: 0.0, M: 356.0470, nm: 0.9856002585, nn: 0.0, nw: 4.70935e-5, ne: -1.151e-9)
                let planetMercury = createPlanet(name: "Mercury", a: 0.387098, e:0.205635, w: 29.1241, N: 48.3313, i: 7.0047, M: 168.6562, nm: 4.0923344368, nn: 3.24587e-5, nw: 1.01444e-5, ne: 5.59e-10)
                print("Geocentric mercur")
                planetMercury.calculateGeocentricPosition(lonSun: planetSun.lonecl!, rs: planetSun.r!)
                print(planetMercury.x!,planetMercury.y!,planetMercury.z!)
                print("Equatorial mercur")
                planetMercury.calculateEquatorialPosition()
                print("x y z mercur")
                print(planetMercury.x!,planetMercury.y!,planetMercury.z!)
                print("lon lat mercur")
                print(planetMercury.lonecl!,planetMercury.latecl!)
                print("ra, decl mercur")
                print(planetMercury.RA!,planetMercury.Decl!)
                print("current location")
                print(currentLocation.coordinate.longitude, currentLocation.coordinate.latitude)
                print("holeocentic mercur")
                print(planetMercury.calculateHorizontalPosition(longitude: currentLocation.coordinate.longitude, latitude: currentLocation.coordinate.latitude,lS: (planetSun.M+planetSun.omega)))
                print(2)

                
                let scene = SCNScene()
                let sun = SCNScene(named: "art.scnassets/Sun.scn")!
                sun.rootNode.position = SCNVector3(planetSun.x!, planetSun.y!, planetSun.z!)
                
                let mercury = SCNScene(named: "art.scnassets/Mercury.scn")!.rootNode
                
        //        let action = SCNAction.rotate(by: 360 * CGFloat(Double.pi/180), around: SCNVector3(0,1,1), duration: 10)
        //        let repAction = SCNAction.repeatForever(action)
        //        mercury.runAction(repAction)

                mercury.position = SCNVector3(planetMercury.x!, planetMercury.y!, planetMercury.z!)
                sun.rootNode.addChildNode(mercury)
                
                let degree: Double = 187
                let minute: Double = 13
                let sec = 0
                let azimuth: Double = degree + minute / 60
                let altitude: Double = 53 + 22/60 + 24/3600
                print(azimuth,altitude)
                let coord = getCoordinates(azimuth: currentAzimuth - azimuth, altitude: currentLocation.altitude - altitude, radius: 0.9900564)
                print(coord.0, coord.1, coord.2)
                sun.rootNode.position = SCNVector3(coord.0, coord.2, coord.1)
        //
                // Set the scene to the view
                sceneView.scene = scene
                sceneView.scene.rootNode.addChildNode(sun.rootNode)
    }
    
    func coordinateString(_ latitude: Double,_ longitude: Double) -> String {
        var latSeconds = Int(latitude * 3600)
        let latDegrees = latSeconds / 3600
        latSeconds = abs(latSeconds % 3600)
        let latMinutes = latSeconds / 60
        latSeconds %= 60
        var longSeconds = Int(longitude * 3600)
        let longDegrees = longSeconds / 3600
        longSeconds = abs(longSeconds % 3600)
        let longMinutes = longSeconds / 60
        longSeconds %= 60
        return String(format:"%d°%d'%d\"%@ %d°%d'%d\"%@",
                      abs(latDegrees),
                      latMinutes,
                      latSeconds, latDegrees >= 0 ? "N" : "S",
                      abs(longDegrees),
                      longMinutes,
                      longSeconds,
                      longDegrees >= 0 ? "E" : "W" )
    }

    
    func createPlanet(name: String, a: Double, e: Double, w: Double, N: Double, i: Double, M: Double, nm: Double, nn: Double, nw: Double, ne: Double) -> Planet {
        let planet = Planet(planetName: name, orbitSize: a, eccentricity: e, omega: w, largeOmega: N, inclination: i, M0: M)
        let date = Date()
        let calendar = Calendar.current
        planet.calculateDate(year:  calendar.component(.year, from: date), month: calendar.component(.month, from: date), day: calendar.component(.day, from: date), hours: calendar.component(.hour, from: date), mins: calendar.component(.minute, from: date))
        print(11)
        planet.updateConstants(nm: nm, nn: nn, nw: nw, ne: ne)
        print(12)
        planet.calculateHeliocentricPosition()
//        print(planet.x,planet.y,planet.z)
        return planet
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
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
    
    func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
//        print("BUN")
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
