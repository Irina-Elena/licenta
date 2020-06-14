//
//  PlanetProfileViewModel.swift
//  AnotherTry
//
//  Created by Irina Cercel on 24/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

class PlanetProfileViewModel {
    weak var coordinator: Coordinator?
    var elements: [(String, String)]
    
    init(coordinator: Coordinator, profile: Profile) {
        self.coordinator = coordinator
        elements = [
            ("Diameter",profile.diameter),
            ("Mass",profile.mass),
            ("Orbit period",profile.orbitPeriod),
            ("Surface temperature",profile.surfaceTemperature),
            ("Discovery date",profile.discoveryDate),
            ("Discovered by",profile.discoveredBy)
        ]
        if profile.moons.value != nil {
            elements.append(("Moons",String(profile.moons.value!)))
        }
        if let rings = profile.rings.value {
            elements.append(("Rings",String(rings)))
        }
        if let orbit = profile.orbit {
            elements.append(("Orbit", orbit))
        }
        elements.append(("Type",profile.planetType!))
    }
    
    func getNumberOfElements() -> Int {
        return elements.count
    }
    
    func getElementAtIndex(_ index: Int) -> (String, String) {
        return elements[index]
    }
}
