//
//  PizzaDeliveryService.swift
//  PeopleAndPizza
//
//  Created by Jhantelle Belleza on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class PizzaDeliveryService {
    var location: Coordinate
    var pizzasAvailable: Int = 10
    
    init(location: Coordinate) {
        self.location = location
    }
    
    func isInRange(destination: Coordinate)->Bool {
        return destination.distanceTo(coordinate: location) <= 5000.00
    }
    
    func deliverPizzaTo(destination: Coordinate)->Bool {
        var deliverPizzaToDestination: Bool
        if isInRange(destination: destination) {
            pizzasAvailable -= 1
            deliverPizzaToDestination = true
        } else {
            deliverPizzaToDestination = false
        }
        
        if pizzasAvailable == 0 {
            deliverPizzaToDestination = false
        }
        return deliverPizzaToDestination
    }
}
