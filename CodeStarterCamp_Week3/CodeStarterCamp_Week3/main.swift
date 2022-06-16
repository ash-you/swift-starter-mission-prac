//
//  main.swift
//  CodeStarterCamp_Week3
//
//  Created by 유연수 on 2022/06/14.
//

import Foundation

class Person {
    var money: Int = 0
    var gender: Gender?
    
    enum Gender {
        case male, female
    }
    
    init(gender: Gender) {
        self.gender = gender
    }
    
    convenience init(money: Int, gender: Gender) {
        self.init(gender: gender)
        self.money = money
    }
    
    func buyCoffee(menu: Coffee) {
        
    }
}

var misterLee: Person = Person(gender: Person.Gender.male)
var missKin: Person = Person(gender: Person.Gender.female)

class CoffeeShop {
    var sales: Int = 0
    var menu: [String: Double] = [:]
    var pickUpTable: Bool = false
    var barista: Person?
    
    init(barista: Person) {
        self.barista = barista
    }
    
    func takeOrder() {
        
    }
    
    func makeCoffee() {
        
    }
}

var yagombucks: CoffeeShop = CoffeeShop(barista: misterLee)

enum Coffee {
    case americano, latte, espresso
}
