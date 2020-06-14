//
//  CompassViewModel.swift
//  AnotherTry
//
//  Created by Irina Cercel on 13/06/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import Foundation

class CompassViewModel {
    var coordinator: Coordinator?
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func goToARView() {
        let coord = coordinator as! CompassCoordinator
        coord.goToARView()
    }
}
