//
//  PlanetModel.swift
//  AnotherTry
//
//  Created by Irina Cercel on 17/04/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import SceneKit
import RealmSwift

class Position: Object {
    @objc dynamic var x: Int
    @objc dynamic var y: Int
    @objc dynamic var z: Int
    
    required init() {
        x = 0
        y = 0
        z = 0
    }
    
    init(pos: (Int, Int, Int)) {
        x = pos.0
        y = pos.1
        z = pos.2
    }
}

class Profile: Object {
    @objc dynamic var diameter: String = ""
    @objc dynamic var orbitPeriod: String = ""
    @objc dynamic var mass: String = ""
    @objc dynamic var discoveredBy: String = ""
    @objc dynamic var discoveryDate: String = ""
    @objc dynamic var surfaceTemperature: String = ""
    var moons = RealmOptional<Int>()
    var rings = RealmOptional<Int>()
    @objc dynamic var orbit: String? = nil
    @objc dynamic var planetType: String? = nil
    
    required init() {
        
    }
    
    init(diameter: String, orbitPeriod: String, mass: String, discoveredBy: String, discoveryDate: String, surfaceTemperature: String, moons: Int? = nil, rings: Int? = nil, orbit: String? = nil, planetType: String? = nil) {
        self.diameter = diameter
        self.orbitPeriod = orbitPeriod
        self.mass = mass
        self.discoveredBy = discoveredBy
        self.discoveryDate = discoveryDate
        self.surfaceTemperature = surfaceTemperature
        self.moons.value = moons
        self.rings.value = rings
        self.orbit = orbit
        self.planetType = planetType
    }
}

class PlanetDescription: Object {
    @objc dynamic var info: String
    @objc dynamic var title: String
    
    required init() {
        info = ""
        title = ""
    }
    
    init(info: String, title: String) {
        self.info = info
        self.title = title
    }
}

class CosmicObject: Object {
    @objc dynamic var name: String
    @objc dynamic var shortDescription: String?
    @objc dynamic var profile: Profile?
    @objc dynamic var position: Position?
    var planetDescription: List<PlanetDescription> = List<PlanetDescription>()
    let quickFacts: List<String> = List<String>()
    var node: SCNNode? = nil
    var images: [UIImage]
    
    required init() {
        name = ""
        images = []
//        quickFacts = nil
        shortDescription = nil
        profile = Profile()
        position = Position()
        planetDescription = List<PlanetDescription>()
    }
    
    init(planetName: String, shortDescription: String? = nil, profile: Profile, position: Position? = nil, planetDescription: [PlanetDescription], quickFacts: [String]? = nil) {
        self.name = planetName
        self.images = []
        self.position = position
        self.shortDescription = shortDescription
        self.profile = profile
        self.planetDescription.append(objectsIn: planetDescription)
//        print(quickFacts)
        if let quickFacts = quickFacts {
//            self.quickFacts = List<String>()
            self.quickFacts.append(objectsIn: quickFacts)
            print(self.quickFacts)
        }
        if let position = position, let scene = SCNScene(named: "art.scnassets/" + planetName + ".scn") {
            self.node = scene.rootNode
            self.node!.childNodes[0].position = SCNVector3(position.x, position.y, position.z)
        } else {
            self.node = nil
        }
    }
}
