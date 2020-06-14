//
//  PopUpViewModel.swift
//  AnotherTry
//
//  Created by Irina Cercel on 29/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import Foundation


class PopUpViewModel {
    var planet: CosmicObject
    var coordinator: Coordinator?
    
    init(coordinator: Coordinator, planet: CosmicObject) {
        self.planet = planet
        self.coordinator = coordinator
    }
    
    func goToPlanet() {
        if let coord = coordinator as? ARCoordinator {
            coord.goToPlanetInfo(planet: planet)
        }
    }
}
