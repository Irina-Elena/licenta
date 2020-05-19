//
//  ARViewModel.swift
//  AnotherTry
//
//  Created by Irina Cercel on 16/04/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

class ARViewModel {
    private var cosmicObjects: [CosmicObject] = []
    weak var coordinator: Coordinator?
    let realmService = RealmService()
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
//        realmService.setData()
        self.cosmicObjects = realmService.getData()
    }
    
    func getPlanets() -> [CosmicObject] {
        return cosmicObjects
    }
    
    func getPlanet(planetName: String) -> CosmicObject? {
        for planet in cosmicObjects {
            if planet.name == planetName {
                return planet
            }
        }
        return nil
    }
}
