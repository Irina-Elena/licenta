//
//  CompassCoordinator.swift
//  AnotherTry
//
//  Created by Irina Cercel on 13/06/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import UIKit

class CompassCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navController: UINavigationController) {
        self.navigationController = navController
    }
    
    func start() {
        let vc = CompassViewController.instantiate()
        vc.compassVM = CompassViewModel(coordinator: self)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goToARView() {
        navigationController.popViewController(animated: false)
        let coord = ARCoordinator(navigationController: navigationController)
        coord.start()
    }
}
