//
//  ARModel.swift
//  AnotherTry
//
//  Created by Irina Cercel on 17/04/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import SceneKit

class PlanetModel {
    var name: String
    var node: SCNNode
    
    init(planetName: String, x: Int, y: Int, z: Int) {
        self.name = planetName
        if let scene = SCNScene(named: "art.scnassets/"+planetName+".scn") {
            self.node = scene.rootNode
            self.node.childNodes[0].position = SCNVector3(x, y, z)
        } else {
            self.node = SCNNode()
            return
        }
    }
}
