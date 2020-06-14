//
//  PlanetDescriptionViewModel.swift
//  AnotherTry
//
//  Created by Irina Cercel on 23/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

class PlanetDescriptionViewModel {
    weak var coordinator: Coordinator?
    var title: String
    var description: String
    
    init(coordinator: Coordinator, title: String, description: String) {
        self.coordinator = coordinator
        self.title = title
        self.description = description
    }
}
