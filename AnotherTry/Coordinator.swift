//
//  Coordinator.swift
//  AnotherTry
//
//  Created by Irina Cercel on 05/04/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator: class {
    var navigationController: UINavigationController { get set }
    
    func start()
}
