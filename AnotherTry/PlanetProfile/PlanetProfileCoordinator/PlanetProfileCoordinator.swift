//
//  PlanetProfileCoordinator.swift
//  AnotherTry
//
//  Created by Irina Cercel on 24/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import UIKit

class PlanetProfileCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navController: UINavigationController) {
        self.navigationController = navController
    }
    
    func start() {
        
    }
    
    func start(profile: Profile) {
        let vc = PlanetProfileView.instantiate()
        vc.planetProfileVM = PlanetProfileViewModel(coordinator: self, profile: profile)
        navigationController.pushViewController(vc, animated: true)
    }
}
