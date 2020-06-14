//
//  CompassView.swift
//  AnotherTry
//
//  Created by Irina Cercel on 13/06/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import UIKit
import CoreLocation

class CompassViewController: UIViewController, Storyboarded, CLLocationManagerDelegate {
    
    var compassVM: CompassViewModel!
    let canvas = CanvasView()
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .dark
        navigationController?.navigationBar.barTintColor = .clear
        canvas.frame.size = CGSize(width: view.bounds.width, height: view.bounds.width)
        canvas.center = view.center
        
        view.addSubview(canvas)
        
        locationManager.delegate = self
        locationManager.startUpdatingHeading()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
        let angle = newHeading.trueHeading * .pi / 180
        UIView.animate(withDuration: 0.5) {
            self.canvas.transform = CGAffineTransform(rotationAngle: -CGFloat(angle))
        }
        if newHeading.trueHeading >= 0 && newHeading.trueHeading <= 20 {
            locationManager.stopUpdatingHeading()
            DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                self.compassVM.goToARView()
            })
        } else if newHeading.trueHeading <= 360 && newHeading.trueHeading >= 340 {
            locationManager.stopUpdatingHeading()
            DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                self.compassVM.goToARView()
            })
        }
    }
}
