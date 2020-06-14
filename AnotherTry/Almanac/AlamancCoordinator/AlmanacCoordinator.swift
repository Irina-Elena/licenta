//
//  AlmanacCoordinator.swift
//  AnotherTry
//
//  Created by Irina Cercel on 03/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//
import UIKit


class AlmanacCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navController: UINavigationController) {
        self.navigationController = navController
    }
    
    func start() {
        let vc = AlmanacView.instantiate()
        vc.almanacVM = AlmanacViewModel(coordinator: self)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goToPlanetInfo(planet: CosmicObject) {
        let coord = PlanetInfoCoordinator(navigationController: self.navigationController)
        coord.start(planet: planet)
    }
}
