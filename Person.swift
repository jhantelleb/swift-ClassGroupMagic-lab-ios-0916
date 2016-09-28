//
//  Person.swift
//  PeopleAndPizza
//
//  Created by Jhantelle Belleza on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    var firstName: String
    var lastName: String
    var home: Coordinate
    var isHungry: Bool = true
    
    init(firstName: String, lastName: String, home: Coordinate) {
        self.firstName = firstName
        self.lastName = lastName
        self.home = home
    }
    
    func eatPizzaFrom(service: PizzaDeliveryService) -> Bool {
        
        var isInRangeAndHungry: Bool
        
        if isHungry == true && service.isInRange(destination: home) == true {
            isHungry = false
            isInRangeAndHungry = true
        } else {
            isInRangeAndHungry = false
        }
        return isInRangeAndHungry
    }
}
