//
//  PlanetInfoCoordinator.swift
//  AnotherTry
//
//  Created by Irina Cercel on 23/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import UIKit

class PlanetInfoCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
    }
    
    func start(planet: CosmicObject) {
        let vc = PlanetInfoView.instantiate()
        vc.planetInfoVM = PlanetInfoViewModel(coordinator: self, planet: planet)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goToPlanetDescription(title: String, description: String) {
        let coord = PlanetDescriptionCoordinator(navController: self.navigationController)
        coord.start(title: title, description: description)
    }
    
    func goToPlanetProfile(profile: Profile) {
        let coord = PlanetProfileCoordinator(navController: navigationController)
        coord.start(profile: profile)
    }
}
