//
//  PlanetCalculus.swift
//  AnotherTry
//
//  Created by Irina Cercel on 18/02/2020.
//  Copyright © 2020 Irina Cercel. All rights reserved.
//

import Foundation


class Planet {
    let planetName: String
    let orbitSize: Double // the length a of the semimajor axis of the orbit, which indicates the size of the orbit
    var eccentricity: Double // the eccentricity e of the orbit, which indicates the shape of the orbit.
    var omega: Double    // the argument ω of the perihelion, which indicates how far the perihelion lies beyond the ascending node of the orbit.
    var largeOmega: Double // the ecliptic longitude Ω [large omega] of the ascending node of the orbit.
    let inclination: Double // the inclination i of the orbit, which indicates how far the orbit is tilted compared to the ecliptic.
    var M: Double // the mean anomaly M0 at a specific date d0, which indicates the position of the planet in its orbit at that date.
//    let n: Double //constant
    var date: Double? //date calculus
    var r: Double? //raza
    var v: Double? // [nu]
    var x: Double?
    var y: Double?
    var z: Double?
    var lonecl: Double?
    var latecl: Double?
    var ecl: Double?
    var RA: Double?
    var Decl: Double?
    
    init(planetName: String, orbitSize: Double, eccentricity: Double, omega: Double, largeOmega: Double, inclination: Double, M0: Double) {
        self.planetName = planetName
        self.orbitSize = orbitSize
        self.eccentricity = eccentricity
        self.omega = omega
        self.largeOmega = largeOmega
        self.inclination = inclination
        self.M = M0
//        self.n = n
        self.date = nil
    }
    
    func calculateDate(year y: Int, month m: Int, day d: Int, hours h: Int, mins: Int) {
//        print(y,m,d,h,mins)
        let d = 367*y - 7 * ( y + (m+9)/12 ) / 4 + 275*m/9 + d - 730530
        let Declimal: Double = Double(truncating: pow(10, String(mins).count) as NSNumber)
        let minsToHours = Double(mins) / Declimal
        date = Double(d) + (Double(h)+minsToHours)/24.0
    }
    
    func getMeanAnomaly(n: Double) -> Double? {
        if let d = date {
            return M + n * d
        } else {
            return nil
        }
    }
    
    func getN(n: Double) -> Double? {
        if let d = date {
            return largeOmega + n * d
        } else {
            return nil
        }
    }
    
    func getPerihelion(n: Double) -> Double? {
        if let d = date {
            return omega + n * d
        } else {
            return nil
        }
    }
    
    func eccentricAnomaly(e: Double) -> Double {
        var E = M + e * sin(Double.pi/180 * M) * ( 1.0 + e * cos(Double.pi/180 * M))
        var F: Double
        var error: Double
        while true {
            print("ok")
            F = E - ( E - e*(180/Double.pi) * sin(Double.pi/180 * E) - M ) / ( 1 - e * cos(Double.pi/180 * E) )
            error = abs(F - E);
            E = F;
            if (error < 1.0e-8) {
                break;  // the angle is good enough now for our purposes
            }
        }
        return E;
    }
    
    func getEccentricity(n: Double) -> Double? {
        if let d = date {
            return eccentricity + n * d
        } else {
            return nil
        }
    }
    func updateConstants(nm: Double, nn: Double, nw: Double, ne: Double) {
        if let m = getMeanAnomaly(n: nm), let n = getN(n: nn), let e = getEccentricity(n: ne), let w = getPerihelion(n: nw) {
            M = m
            largeOmega = n
            eccentricity = e
            omega = w
        }
    }
    
    //For Moon - geocentric position. For the planets, this is the heliocentric (Sun-centered) position
    func calculateHeliocentricPosition() {
        print("Calculate heliocentric Position")
        let E = eccentricAnomaly(e: eccentricity)
        let ecl = 23.4393 - 3.563e-7 * date!
        self.ecl = ecl
        
        if planetName == "Sun" {
            // poistion in its own orbital space
            let xv = cos(Double.pi/180 * E) - eccentricity
            let yv = sqrt(1.0 - eccentricity*eccentricity) * sin(Double.pi/180 * E)
            
            // [nu] angle and distance
            let v = (180/Double.pi) * atan2( yv, xv )
            let r = sqrt( xv*xv + yv*yv)   //True anomaly in degrees: the angle from perihelion of the body as seen by the Sun.
            self.r = r
            
            var lonSun = (v + omega)
//            while lonSun > 360.0 {
//                lonSun = (v + omega)
//            }
            print(lonSun, v+omega)
            self.lonecl = lonSun
            
            self.x = r * cos(Double.pi/180 * lonSun)
            self.y = r * sin(Double.pi/180 * lonSun) * cos(Double.pi/180 * ecl)
            self.z = r * sin(Double.pi/180 * lonSun) * sin(Double.pi/180 * ecl)
            
            self.RA  = (180/Double.pi) * atan2(self.y!, self.x!)
            self.Decl = (180/Double.pi) * atan2( self.z!, sqrt(self.x!*self.x! + self.y!*self.y!))
            print("ra sun: ",self.RA!/15, " decl sun: ",self.Decl)
        } else {
            // poistion in its own orbital space
            let xv = orbitSize * (cos(Double.pi/180 * E) - eccentricity)
            let yv = orbitSize * (sqrt(1.0 - eccentricity*eccentricity) * sin(Double.pi/180 * E))
            
            // [nu] angle and distance
            let v = (180/Double.pi) * atan2( yv, xv )
            let r = sqrt( xv*xv + yv*yv)   //True anomaly in degrees: the angle from perihelion of the body as seen by the Sun.
            self.r = r
            
            self.x = r * ( cos(Double.pi/180 * largeOmega) * cos(Double.pi/180 * (v+omega)) - sin(Double.pi/180 * largeOmega) * sin(Double.pi/180 * (v+omega)) * cos(Double.pi/180 * inclination) )
            self.y = r * ( sin(Double.pi/180 * largeOmega) * cos(Double.pi/180 * (v+omega)) + cos(Double.pi/180 * largeOmega) * sin(Double.pi/180 * (v+omega)) * cos(Double.pi/180 * inclination) )
            self.z = r * ( sin(Double.pi/180 * (v+omega)) * sin(Double.pi/180 * inclination) )
            
            self.lonecl = (180/Double.pi) * atan2(self.y!, self.x!)
            self.latecl = (180/Double.pi) * atan2(self.z!, sqrt(self.x!*self.x! + self.y!*self.y!))
        }
    }
    
    func calculateGeocentricPosition(lonSun: Double, rs: Double) {
        if let r = self.r, let lonecl = self.lonecl, let latecl = self.latecl {
            self.x = r * cos(Double.pi/180 * lonecl) * cos(Double.pi/180 * latecl) + rs * cos(Double.pi/180 * lonSun)
            self.y = r * sin(Double.pi/180 * lonecl) * cos(Double.pi/180 * latecl) + rs * sin(Double.pi/180 * lonSun)
            self.z = r * sin(Double.pi/180 * latecl)
        }
    }
    
    func calculateEquatorialPosition() {
        if let y = self.y, let z = self.z, let ecl = self.ecl {
            self.y = y * cos(Double.pi/180 * ecl) - z * sin(Double.pi/180 * ecl)
            self.z = y * sin(Double.pi/180 * ecl) + z * cos(Double.pi/180 * ecl)
            self.RA  = (180/Double.pi) * atan2(self.y!, self.x!)
            self.Decl = (180/Double.pi) * atan2( self.z!, sqrt(self.x!*self.x! + self.y!*self.y!))
        }
    }
    
    func calculateHorizontalPosition(longitude: Double, latitude: Double, lS: Double) -> (Double,Double) {
//        let GST = GreenwichSiderealTimeInHours(d: date!)
        let GMST0 = (lS + 180.0) / 15.0
        let utcHours = (date! - floor(date!)) * 24.0
        let LST = GMST0 + utcHours + (longitude / 15.0);
//        let LST = GST + (longitude / 15.0)
//        let fraction = (LST - self.RA!)/360
//        let HA = 360 * (fraction - floor(fraction))
        var HA = (LST - self.RA!)
        while abs(HA) > 360 {
            if HA < 0 {
                HA += 360
            } else {
                HA -= 360
            }
        }
        print(HA, LST, self.RA)
        
        let x = cos(Double.pi/12 * HA) * cos(Double.pi/180 * Decl!)
        let y = sin(Double.pi/12 * HA) * cos(Double.pi/180 * Decl!)
        let z = sin(Double.pi/180 * Decl!)
        
        self.x = x * sin(Double.pi/180 * latitude) - z * cos(Double.pi/180 * latitude)
        self.y = y
        self.z = x * cos(Double.pi/180 * latitude) + z * sin(Double.pi/180 * latitude)
        
//        let az  = (180/Double.pi) * atan2(self.y!, self.x!) + 180
        var altitudeRatio = (sin(Double.pi/180 * latitude) * sin(Double.pi/180 * Decl!)) + (cos(Double.pi/180 * latitude) * cos(Double.pi/180 * Decl!) * cos(Double.pi/12 * HA))
        var altitude = 180/Double.pi * asin(altitudeRatio)
        
        
        let fr = atan2(-cos(Double.pi/180 * Decl!) * sin(Double.pi/12 * HA), (cos(Double.pi/180 * latitude) * sin(Double.pi/180 * Decl!)) - (sin(Double.pi/180 * latitude) * cos(Double.pi/180 * Decl!) * cos(Double.pi/12 * HA))) / 360
        let az = 360 - (fr - floor(fr))
//        let alt = (180/Double.pi) * atan2(self.z!, sqrt(self.y!*self.y! + self.x!*self.x!))
        
        return (az,altitude)
    }
    
    func GreenwichSiderealTimeInHours(d: Double) -> Double {
        let midnight = floor (d)    // discard fractional part to get same calendar day at midnight UTC
        let T0 = (midnight - 1.5) / 36525.0
        let tUT = (d - midnight) * 24.0     // Greenwich time of day, in hours
        let SG = (6.6974 + 2400.0513 * T0) + (366.2422 / 365.2422) * tUT
        let fraction = SG / 360
        return 360 * (fraction - floor(fraction))
    }
}
