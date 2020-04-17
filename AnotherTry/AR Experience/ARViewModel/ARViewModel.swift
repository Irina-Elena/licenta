//
//  ARViewModel.swift
//  AnotherTry
//
//  Created by Irina Cercel on 16/04/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//


class ARViewModel {
    private var planets: [PlanetModel] = []
    weak var coordinator: Coordinator?
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func setPlanets(planets: [(String, Int, Int, Int)]) {
        for planet in planets{
            self.planets.append(PlanetModel(planetName: planet.0, x: planet.1, y: planet.2, z: planet.3))
        }
    }
    
    func getPlanets() -> [PlanetModel] {
        return planets
    }
    
}
