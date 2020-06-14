//
//  ARCoordinator.swift
//  AnotherTry
//
//  Created by Irina Cercel on 05/04/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import UIKit

class ARCoordinator: Coordinator {
//    var children = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ARView.instantiate()
        vc.arVM = ARViewModel(coordinator: self)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goToPlanetInfo(planet: CosmicObject) {
        let coord = PlanetInfoCoordinator(navigationController: self.navigationController)
        coord.start(planet: planet)
    }
}
