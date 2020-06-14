//
//  ARViewModel.swift
//  AnotherTry
//
//  Created by Irina Cercel on 16/04/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//
import Foundation

class ARViewModel {
    private var cosmicObjects: [CosmicObject] = []
    var coordinator: Coordinator?
    var jsonResponse: [String: (Float,Float,Float)]?
    let realmService = RealmService()
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
        self.cosmicObjects = realmService.getData()
    }
    
    func getPlanets() -> [CosmicObject] {
        return cosmicObjects
    }
    
    func getPlanet(planetName: String) -> CosmicObject? {
        for planet in cosmicObjects {
            if planet.name == planetName {
                return planet
            }
        }
        return nil
    }
    
    func getPlanetaryPositions(latitude: String, longitude: String, completionHandler: @escaping ([String: (Float,Float,Float)]) -> Void) {
        let coordinates = ["longitude": longitude, "latitude": latitude]
        guard var components = URLComponents(string: "https://planetariumm.ey.r.appspot.com") else {
            print("Wrong URL!")
            return
        }
        components.queryItems = coordinates.map { (key, value) in
            URLQueryItem(name: key, value: value)
        }
        
        if let url = components.url {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            let session = URLSession.shared
            session.dataTask(with: request) { (data, response, error) in
                if let response = response as? HTTPURLResponse {
                    print(response.statusCode)
                }
                if let data = data {
//                    print(data)
                    do {
                        let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String : NSArray]
                        print(json)
                        self.jsonResponse = self.computeScenePositions(planetaryPositions: json ?? [:])
                        print(self.jsonResponse)
                        completionHandler(self.jsonResponse ?? [:])
                    } catch {
                        print(error)
                    }
                }
            }.resume()
        }
    }
    
    func calculatePosition(azimuth: Float, altitude: Float) -> (Float, Float, Float) {
        // x
        var x: Float = 0
        if (azimuth >= 0 && azimuth <= 90) {
            x = azimuth
        } else if (azimuth > 90 && azimuth <= 180) {
            x = (180 - azimuth)
        } else if (azimuth > 180 && azimuth <= 270) {
            x = -(azimuth - 180)
        } else if (azimuth > 270 && azimuth <= 360) {
            x = -(360 - azimuth)
        }
        // y
        let y: Float = altitude
        // z
        var z: Float = 0
        if (azimuth <= 180) {
            z = (azimuth - 90)
        } else {
            z = (270 - azimuth)
        }
        
        return (x, y, z/2)
    }
    
    func computeScenePositions(planetaryPositions: [String: NSArray]) -> [String: (Float,Float,Float)] {
        var planets: [String: (Float,Float,Float)] = [:]
        for planet in planetaryPositions {
            planets[planet.key] = calculatePosition(azimuth: (planet.value[1] as? NSNumber)?.floatValue ?? 0, altitude: (planet.value[0] as? NSNumber)?.floatValue ?? 0)
        }
        print(planets)
        return planets
    }
    
    
    func getPositions() -> [String: (Float,Float,Float)]? {
        if let jsonResponse = jsonResponse {
            return jsonResponse
        }
        return nil
    }
}
