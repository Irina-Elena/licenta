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
            let profile = Profile(diameter: "3,475 km", orbitPeriod: "27.3 days", mass: "7.35 × 10^22 kg (0.01 Earths)", discoveredBy: "-", discoveryDate: "-", surfaceTemperature: "-233 to 123 °C", orbit: "Earth", planetType: "Moon")
            let shortDescription = "Our natural satelite"
            let position = Position(pos: (0,0,0))
                        let description = [
                            PlanetDescription(info: """
            The brightest and largest object in our night sky, the Moon makes Earth a more livable planet by moderating our home planet's wobble on its axis, leading to a relatively stable climate. It also causes tides, creating a rhythm that has guided humans for thousands of years.

            The Moon was likely formed after a Mars-sized body collided with Earth several billion years ago.

            Earth's Moon is the only place beyond Earth where humans have set foot, so far.

            Earth's only natural satellite is simply called "the Moon" because people didn't know other moons existed until Galileo Galilei discovered four moons orbiting Jupiter in 1610. In Latin, the Moon was called Luna, which is the main adjective for all things Moon-related: lunar.
            """, title: "Introduction"),
                            PlanetDescription(info: """
            The leading theory of the Moon's origin is that a Mars-sized body collided with Earth about 4.5 billion years ago. The resulting debris from both Earth and the impactor accumulated to form our natural satellite 239,000 miles (384,000 kilometers) away. The newly formed Moon was in a molten state, but within about 100 million years, most of the global "magma ocean" had crystallized, with less-dense rocks floating upward and eventually forming the lunar crust.
            """, title: "Formation"),
                            PlanetDescription(info: """
            With a radius of 1,079.6 miles (1,737.5 kilometers), the Moon is less than a third the width of Earth. If Earth were the size of a nickel, the Moon would be about as big as a coffee bean.

            The Moon is farther away from Earth than most people realize. The Moon is an average of 238,855 miles (384,400 kilometers) away. That means 30 Earth-sized planets could fit in between Earth and the Moon.

            The Moon is slowly moving away from Earth, getting about an inch farther away each year.
            """, title: "Size and Distance"),
                            PlanetDescription(info: """
            Earth's Moon has a core, mantle and crust.

            The Moon’s core is proportionally smaller than other terrestrial bodies' cores. The solid, iron-rich inner core is 149 miles (240 kilometers) in radius. It is surrounded by a liquid iron shell 56 miles (90 kilometers) thick. A partially molten layer with a thickness of 93 miles (150 kilometers) surrounds the iron core.

            The mantle extends from the top of the partially molten layer to the bottom of the Moon's crust. It is most likely made of minerals like olivine and pyroxene, which are made up of magnesium, iron, silicon and oxygen atoms.

            The crust has a thickness of about 43 miles (70 kilometers) on the Moon’s near-side hemisphere and 93 miles (150 kilometers) on the far-side. It is made of oxygen, silicon, magnesium, iron, calcium and aluminum, with small amounts of titanium, uranium, thorium, potassium and hydrogen.

            Long ago the Moon had active volcanoes, but today they are all dormant and have not erupted for millions of years.
            """, title: "Structure"),
                            PlanetDescription(info: """
            With too sparse an atmosphere to impede impacts, a steady rain of asteroids, meteoroids and comets strikes the surface of the Moon, leaving numerous craters behind. Tycho Crater is more than 52 miles (85 kilometers) wide.

            Over billions of years, these impacts have ground up the surface of the Moon into fragments ranging from huge boulders to powder. Nearly the entire Moon is covered by a rubble pile of charcoal-gray, powdery dust and rocky debris called the lunar regolith. Beneath is a region of fractured bedrock referred to as the megaregolith.

            The light areas of the Moon are known as the highlands. The dark features, called maria (Latin for seas), are impact basins that were filled with lava between 4.2 and 1.2 billion years ago. These light and dark areas represent rocks of different composition and ages, which provide evidence for how the early crust may have crystallized from a lunar magma ocean.

            If you looked in the right places on the Moon, you would find pieces of equipment, American flags, and even a camera left behind by astronauts. While you were there, you'd notice that the gravity on the surface of the Moon is one-sixth of Earth's, which is why in footage of moonwalks, astronauts appear to almost bounce across the surface.

            The temperature reaches about 260 degrees Fahrenheit (127 degrees Celsius) when in full sun, but in darkness, the temperatures plummets to about -280 degrees Fahrenheit (-173 degrees Celsius).
            """, title: "Surface"),
                            PlanetDescription(info: """
            The Moon has a very thin and weak atmosphere, called an exosphere. It does not provide any protection from the sun's radiation or impacts from meteoroids.
            """, title: "Atmosphere"),
                            PlanetDescription(info: """
During the initial exploration of the moon, and the analysis of all the returned samples from the Apollo and the Luna missions, we thought that the surface of the moon was dry.

The first definitive discovery of water was made in 2008 by the Indian mission Chandrayaan-1, which detected hydroxyl molecules spread across the lunar surface and concentrated at the poles. Missions usch as Lunar Prospector, LCROSS, and Lunar Reconnaissance Orbiter, have not only shown that the surface of the Moon has a global hydration, but there are actually high concentrations of ice water in the permanently shadowed regions of the lunar poles.

Scientists also found the lunar surface releases its water when the Moon is bombarded by micrometeoroids. The surface is protected by a layer, a few centimeters of dry soil that can only be breached by large micrometeoroids. When micrometeoroids impact the surface of the moon, most of the material in the crater is vaporized. The shock wave carries enough energy to release the water that’s coating the grains of the soil. Most of that water is released into space
""", title: "Water on the Moon"),
                            PlanetDescription(info: """
Our Moon doesn't shine, it reflects. Just like daytime here on Earth, sunlight illuminates the Moon. We just can't always see it.
When sunlight hits off the Moon's far side — the side we can't see without from Earth the aid of a spacecraft — it is called a new moon.
When sunlight reflects off the near side, we call it a full moon.

The rest of the month we see parts of the daytime side of the Moon, or phases. These eight phases are, in order, new moon, waxing crescent, first quarter, waxing gibbous, full moon, waning gibbous, third quarter and waning crescent. The cycle repeats once a month (every 29.5 days).
""", title: "Lunar Phases"),
                            PlanetDescription(info: """
During a lunar eclipse, Earth comes between the Sun and the Moon, blocking the sunlight falling on the Moon.

There are two kinds of lunar eclipses:
    - A total lunar eclipse occurs when the Moon and Sun are on opposite sides of Earth.
    - A partial lunar eclipse happens when only part of Earth's shadow covers the Moon.

During some stages of a lunar eclipse, the Moon can appear reddish. This is because the only remaining sunlight reaching the Moon at that point is from around the edges of the Earth, as seen from the Moon's surface. From there, an observer during an eclipse would see all Earth's sunrises and sunsets at once.
""", title: "Lunar Eclipse"),
                            PlanetDescription(info: """
The first man to set foot on the Moon in 1969 was Neil Armstrong on the Apollo 11 mission, while the last man to walk on the Moon in 1972 was Gene Cernan on the Apollo 17 mission. Since then the Moon has only be visited by unmanned vehicles.
""", title: "The Moon has only been walked on by 12 people; all American men")
                        ]
            let quickFacts = [
                "TThe Moon is the fifth largest natural satellite", "You weigh less on the Moon than you do on Earth",
                "It is slowly moving away from Earth", "The Moon causes the rise and fall of the ocean’s tides on Earth", "It is estimated to be 4.5 billion years ago"
            ]
                        let planet = CosmicObject(planetName: "Moon", shortDescription: shortDescription, profile: profile, position: position, planetDescription: description, quickFacts: quickFacts)
            
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
//                if planet.name == "Mercury" || planet.name == "Venus" {
//
//                } else {
//                    try! realm.write {
//                        realm.delete(planet)
//                    }
//                }
                let cosmicObject = CosmicObject(planetName: planet.name, shortDescription: planet.shortDescription, profile: planet.profile!, position: planet.position, planetDescription: Array(planet.planetDescription), quickFacts: Array(planet.quickFacts))
                cosmicObjects.append(cosmicObject)
            }
            return cosmicObjects
        }
        return []
    }
}
