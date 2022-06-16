//
//  CoffeeShop.swift
//  CodeStarterCamp_Week3
//
//  Created by 유연수 on 2022/06/16.
//

import Foundation

class CoffeeShop {
    var name: String
    var sales: Int = 0
    var pickUpTable: Bool = false
    var barista: Person
    
    init(name: String, barista: Person) {
        self.name = name
        self.barista = barista
    }
    
    func order(_ customer: Person, _ coffee: Coffee) {
        print("\(self.name)에서 \(customer.name)님의 \(coffee.rawValue) 주문을 받았습니다.")
        sales += coffee.price
        
        makeCoffee(customer, coffee)
    }
    
    func makeCoffee(_ customer: Person, _ coffee: Coffee) {
        print("\(self.barista.name)가 \(coffee.rawValue)를 추출합니다.")
        
        noticeCoffeeMakingComplete(customer, coffee)
    }
    
    func noticeCoffeeMakingComplete(_ customer: Person, _ coffee: Coffee) {
        print("\(customer.name)님의 \(coffee.rawValue)가 준비되었습니다. 픽업대에서 가져가주세요. :D")
        pickUpTable = true
    }
}
