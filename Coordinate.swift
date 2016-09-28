//
//  Coordinate.swift
//  PeopleAndPizza
//
//  Created by Jhantelle Belleza on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Coordinate {
    var latitude: Double
    var longitude: Double
    
    var isInNorthernHemisphere: Bool { return (!latitude.isLess(than: 0.0)) }
    var isInSouthernHemisphere: Bool { return (latitude.isLess(than: 0.0)) }
    var isInWesternHemisphere: Bool { return (!longitude.isLess(than: 0.0)) }
    var isInEasternHemisphere: Bool { return (longitude.isLess(than: 0.0)) }

    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    func distanceTo(coordinate: Coordinate)->Double {

        
        let distanceFromSelfToCoordinate = acos(sin(latitude.radians) * sin(coordinate.latitude.radians) + cos(self.latitude.radians) * cos(coordinate.latitude.radians) * cos(self.longitude.radians-coordinate.longitude.radians)) * 6371000 / 1000
        
        return distanceFromSelfToCoordinate
    }
}

extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}


