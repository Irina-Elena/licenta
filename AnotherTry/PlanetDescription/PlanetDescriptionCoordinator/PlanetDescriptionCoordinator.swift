//
//  PlanetDescriptionCoordinator.swift
//  AnotherTry
//
//  Created by Irina Cercel on 23/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//
import UIKit

class PlanetDescriptionCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navController: UINavigationController) {
        self.navigationController = navController
    }
    
    func start() {
        
    }
    
    func start(title: String, description: String) {
        let vc = PlanetDescriptionView.instantiate()
        vc.planetDescriptionVM = PlanetDescriptionViewModel(coordinator: self, title: title, description: description)
        navigationController.pushViewController(vc, animated: true)
    }
    
}
