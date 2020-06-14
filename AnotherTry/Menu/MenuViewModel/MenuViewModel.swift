//
//  MenuViewModel.swift
//  AnotherTry
//
//  Created by Irina Cercel on 17/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

class MenuViewModel {
    weak var coordinator: MenuCoordinator?
    
    init(coordinator: MenuCoordinator) {
        self.coordinator = coordinator
    }
    
    func goToAlmanac() {
        if let coord = coordinator {
            coord.goToAlmanac()
        }
    }
    
    func goToARExperience() {
        if let coord = coordinator {
            coord.goToARExperience()
        }
    }
    
}
