//
//  PlanetCellViewModel.swift
//  AnotherTry
//
//  Created by Irina Cercel on 17/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

protocol PlanetCellDelegate: class {
    func setPhoto()
}

class PlanetCellViewModel {
    var planet: CosmicObject
    
    init(planet: CosmicObject) {
        self.planet = planet
    }
}
