//
//  MenuCoordinator.swift
//  AnotherTry
//
//  Created by Irina Cercel on 05/04/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import Foundation
import  UIKit

class MenuCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(nav: UINavigationController) {
        self.navigationController = nav
    }
    
    func start() {
        let vc = MenuView.instantiate()
        vc.menuVM = MenuViewModel(coordinator: self)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goToARExperience() {
        let coord = CompassCoordinator(navController: navigationController)
        coord.start()
    }
    
    func goToAlmanac() {
        let coord = AlmanacCoordinator(navController: navigationController)
        coord.start()
    }
}
