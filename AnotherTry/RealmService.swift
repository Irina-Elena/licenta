//
//  RealmService.swift
//  AnotherTry
//
//  Created by Irina Cercel on 19/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import RealmSwift

class RealmService {
    let realm: Realm?
    
    init() {
        let config = Realm.Configuration(
            schemaVersion: 3,
            migrationBlock: { migration, oldSchemaVersion in
                // We haven’t migrated anything yet, so oldSchemaVersion == 0
                if (oldSchemaVersion < 1) {
                    // Nothing to do!
                    // Realm will automatically detect new properties and removed properties
                    // And will update the schema on disk automatically
                }
            })
        Realm.Configuration.defaultConfiguration = config
        
        do {
            self.realm = try Realm()
        //            try! realm!.write {
        //                realm!.deleteAll()
        //            }
        } catch let error as NSError {
            realm = nil
            print("Connection to realm failed! Error: ", error)
        }
    }
    
    func setData() {
        if let realm = realm {
            let profile = Profile(diameter: "12,104 km", orbitPeriod: "225 days", mass: "4.87 × 10^24 kg (0.82 Earths)", discoveredBy: "Babylonian astronomers", discoveryDate: "17th century BC", surfaceTemperature: "462 °C", moons: 0, rings: 0, planetType: "Terrestrial planet")
            let shortDescription = "The second planet in the Solar System"
            let position = Position(pos: (7, 0, -5))
            let description = [
                PlanetDescription(info: "Venus is the second planet from the Sun and our closest planetary neighbor. Similar in structure and size to Earth, Venus spins slowly in the opposite direction from most planets. Its thick atmosphere traps heat in a runaway greenhouse effect, making it the hottest planet in our solar system with surface temperatures hot enough to melt lead. Glimpses below the clouds reveal volcanoes and deformed mountains. Venus is named for the ancient Roman goddess of love and beauty, who was known as Aphrodite to the Ancient Greeks.", title: "Introduction"),
                PlanetDescription(info: "The Earth and Venus are very similar in size with only a 638 km difference in diameter and Venus having 81.5% of the Earth’s mass. Both also have a central core, a molten mantle and a crust.", title: "Venus is often called the Earth’s sister planet"),
                PlanetDescription(info: "From space, Venus is bright white because it is covered with clouds that reflect and scatter sunlight. At the surface, the rocks are different shades of grey, like rocks on Earth, but the thick atmosphere filters the sunlight so that everything would look orange if you were standing on Venus. Venus has mountains, valleys, and tens of thousands of volcanoes.", title: "Surface"),
                PlanetDescription(info: "It takes 243 Earth days to rotate once on its axis (sidereal day). The planet’s orbit around the Sun takes 225 Earth days, compared to the Earth’s 365. A day on the surface of Venus (solar day) takes 117 Earth days.", title: "A day on Venus lasts longer than a year"),
                PlanetDescription(info: "The average surface temperature is 462 °C, and because Venus does not tilt on its axis, there is no seasonal variation. The dense atmosphere of around 96.5 percent carbon dioxide traps heat and causes a greenhouse effect.", title: "Venus is the hottest planet in our solar system"),
                PlanetDescription(info: "In 2006, the Venus Express space craft was sent into orbit around Venus by the European Space Agency. Originally planned to last five hundred Earth days, the mission was extended several times before the craft was deorbited in 2015. More than 1,000 volcanoes or volcanic centres larger than 20 km have been found on the surface of Venus.", title: "A detailed study of Venus finished in 2015"),
                PlanetDescription(info: "The Venera 1 space probe was launched in 1961, but lost contact with base. The USA also lost their first probe to Venus, Mariner 1, although Mariner 2 was able to take measurements of the planet in 1962. The Soviet Union’s Venera 3 was the first man-made craft to land on Venus in 1966.", title: "The Russians sent the first mission to Venus")
            ]
            let quickFacts = [
                "Venus is nearly as big as the Earth with a diameter of 12,104km", "Venus is thought to be made up of a central iron core, rocky mantle and silicate crust",
                "There appears to be ongoing volcanic activity beneath the clouds", "A year on Venus takes 225 Earth days", "The surface temperature on Venus can reach 471°C"
            ]
            let planet = CosmicObject(planetName: "Venus", shortDescription: shortDescription, profile: profile, position: position, planetDescription: description, quickFacts: quickFacts)
            
            realm.beginWrite()
            
            realm.add(planet)
            
            do{
                try realm.commitWrite()
            } catch let err as NSError {
                print("Error at writting data in database: ", err)
            }
        }
    }
    
    func getData() -> [CosmicObject] {
        if let realm = realm {
            var cosmicObjects: [CosmicObject] = []
            let planets = realm.objects(CosmicObject.self)
            for planet in planets {
                let cosmicObject = CosmicObject(planetName: planet.name, shortDescription: planet.shortDescription, profile: planet.profile!, position: planet.position, planetDescription: Array(planet.planetDescription), quickFacts: Array(planet.quickFacts))
                cosmicObjects.append(cosmicObject)
//                print(cosmicObjects)
            }
            return cosmicObjects
        }
        return []
    }
}
