//
//  AlmanacViewModel.swift
//  AnotherTry
//
//  Created by Irina Cercel on 03/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

class AlmanacViewModel {
    private var cosmicObjects = [CosmicObject]()
    private var filteredPlanets = [CosmicObject]()
    var coordinator: AlmanacCoordinator?
    let realmService = RealmService()
    
    init(coordinator: AlmanacCoordinator) {
        self.coordinator = coordinator
//        realmService.setData()
        self.cosmicObjects = realmService.getData()
//        realmService.setData()

    }
    
    func getAllPlanets() -> [CosmicObject] {
        return cosmicObjects
    }
    
    func filterPlanets(name: String){
        if name == "" {
            filteredPlanets = cosmicObjects
        } else {
            filteredPlanets = cosmicObjects.filter({ planet in planet.name.lowercased().contains(name.lowercased())})
        }
    }
    
    func getNumberOfPlanets(isSearchBarActive: Bool) -> Int {
        if isSearchBarActive == true {
            return filteredPlanets.count
        }
        return cosmicObjects.count
    }
    
    func getPlanetAtIndex(_ index: Int, isSearchBarActive: Bool) -> CosmicObject {
        if isSearchBarActive == true {
            return filteredPlanets[index]
        }
        return cosmicObjects[index]
    }
    
    func goToPlanetInfo(index: Int, isSearchBarActive: Bool) {
        if let coord = coordinator {
            if isSearchBarActive == true {
                coord.goToPlanetInfo(planet: filteredPlanets[index])
            } else {
                coord.goToPlanetInfo(planet: cosmicObjects[index])
            }
        }
    }
}
