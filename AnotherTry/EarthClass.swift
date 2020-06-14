//
//  EarthClass.swift
//  AnotherTry
//
//  Created by Irina Cercel on 27/05/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

class EarthClass {
    var name = "Earth"
    var angle = AngleCalculuator()
    var x: Double
    var y: Double
    var z: Double
    
    init(day: Double) {
        let d = day - 1.5
        let T = d / 36525.0             // Julian centuries since J2000.0
        let L0 = 280.46645 + (36000.76983 * T) + (0.0003032 * T * T)        // Sun's mean longitude, in degrees
        let M0 = 357.52910 + (35999.05030 * T) - (0.0001559 * T * T) - (0.00000048 * T * T * T)     // Sun's mean anomaly, in degrees
        let C =       // Sun's equation of center in degrees
            (1.914600 - 0.004817 * T - 0.000014 * T * T) * angle.sinDeg(degrees: M0) + (0.01993 - 0.000101 * T) * angle.sinDeg(degrees: 2 * M0) + 0.000290 * angle.sinDeg(degrees: 3 * M0)
        let LS = L0 + C;         // true ecliptical longitude of Sun
        let e = 0.016708617 - T * (0.000042037 + (0.0000001236 * T));    // The eccentricity of the Earth's orbit.
        let distanceInAU = (1.000001018 * (1 - e * e)) / (1 + e * angle.cosDeg(degrees: M0 + C));     // distance from Sun to Earth in astronomical units (AU)
        let x = -distanceInAU * angle.cosDeg(degrees: LS);
        let y = -distanceInAU * angle.sinDeg(degrees: LS);
        self.x = x
        self.y = y
        self.z = 0.0
    }
}
