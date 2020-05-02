//
//  PlanetModel.swift
//  AnotherTry
//
//  Created by Irina Cercel on 17/04/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import SceneKit

protocol CosmicObject {
    var name: String { get set }
    var shortDescription: String { get set }
    var titleDescription: [String] { get set }
    var description: [String] { get set }
}

struct PlanetModel: CosmicObject {
    // interface variables
    var name: String
    var shortDescription: String
    var titleDescription: [String]
    var description: [String]
    
    // struct variables
    var node: SCNNode
    var discovery: String
    var named: String
    var diameter: String
    var orbit: String
    var day: String
    
    init(planetName: String, position: (Int, Int, Int)) {
        self.name = planetName
        shortDescription = "shortdescription"
        titleDescription = ["title long description1","title long description2","title longdescription3"]
        description = ["long description1","long description2","longdescription3"]
        discovery = "discovery"
        named = "named"
        diameter = "diameter"
        orbit = "orbit"
        day = "day"
        if let scene = SCNScene(named: "art.scnassets/" + planetName + ".scn") {
            self.node = scene.rootNode
            self.node.childNodes[0].position = SCNVector3(position.0, position.1, position.2)
        } else {
            self.node = SCNNode()
            return
        }
    }
}

struct MoonModel: CosmicObject {
    var name: String
    var shortDescription: String
    var titleDescription: [String]
    var description: [String]
    var node: SCNNode?
    
    init(moonName: String, position: (Int,Int,Int)?) {
        self.name = moonName
        shortDescription = "shortdescription"
        titleDescription = ["title long description1","title long description2","title longdescription3"]
        description = ["long description1","long description2","longdescription3"]
        if let scene = SCNScene(named: "art.scnassets/" + moonName + ".scn"), let position = position {
            self.node = scene.rootNode
            self.node!.childNodes[0].position = SCNVector3(position.0, position.1, position.2)
        } else {
            self.node = SCNNode()
            return
        }
    }
}

