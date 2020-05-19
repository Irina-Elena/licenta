//
//  AlmanacViewModel.swift
//  AnotherTry
//
//  Created by Irina Cercel on 03/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

class AlmanacViewModel {
    private var cosmicObjects = [CosmicObject]()
    weak var coordinator: Coordinator?
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func loadCosmicObjects() {
        
    }
}
