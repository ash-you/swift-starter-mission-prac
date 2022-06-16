//
//  Person.swift
//  CodeStarterCamp_Week3
//
//  Created by 유연수 on 2022/06/16.
//

import Foundation

class Person {
    var name: String
    var money: Int = 0
    var gender: Gender
    
    enum Gender {
        case male, female
    }
    
    init(name: String, gender: Gender) {
        self.name = name
        self.gender = gender
    }
    
    func buyCoffee(coffee: Coffee, coffeeShop: CoffeeShop) {
        print("현재 \(self.name)의 소지금은 \(self.money)원이며, \(coffeeShop.name)의 \(coffee.rawValue) 가격은 \(coffee.price)원입니다.")
        
        if self.money < coffee.price {
            let insufficientAmount: Int = -(self.money - coffee.price)
            print("잔액이 \(insufficientAmount)원만큼 부족합니다.")
        } else {
            self.money -= coffee.price
            print("\(self.name)이(가) \(coffee.rawValue)을(를) 구매합니다. 남은 소지금은 \(self.money)원입니다.")
            coffeeShop.order(self, coffee)
        }
    }
}
