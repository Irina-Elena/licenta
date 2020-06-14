//
//  PlanetInfoViewModel.swift
//  AnotherTry
//
//  Created by Irina Cercel on 23/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

class PlanetInfoViewModel {
    var coordinator: Coordinator?
    var planet: CosmicObject
    var titles = [String]()
    var descriptions = [String]()
    
    init(coordinator: Coordinator, planet: CosmicObject) {
        self.coordinator = coordinator
        self.planet = planet
        titles.append("Profile")
        descriptions.append("Profile")
        for description in planet.planetDescription {
            titles.append(description.title)
            descriptions.append(description.info)
        }
    }
    
    func getNumberOfTitles() -> Int {
        return titles.count
    }
    
    func getTitleAtIndex(_ index: Int) -> String {
        return titles[index]
    }
    
    func goToPlanetDescription(index: Int) {
        let coord = coordinator as! PlanetInfoCoordinator
        if titles[index] == "Profile" {
            coord.goToPlanetProfile(profile: planet.profile!)
        } else {
            coord.goToPlanetDescription(title: titles[index], description: descriptions[index])
        }
    }
}
