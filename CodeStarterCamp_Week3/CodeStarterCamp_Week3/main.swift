//
//  main.swift
//  CodeStarterCamp_Week3
//
//  Created by 유연수 on 2022/06/14.
//

import Foundation

var misterLee: Person = Person(name: "lee", gender: Person.Gender.male)
var missKim: Person = Person(name: "kim", gender: Person.Gender.female)
var yagombucks: CoffeeShop = CoffeeShop(name: "yagombucks", barista: misterLee)

missKim.money = 3000
missKim.buyCoffee(coffee: Coffee.latte, coffeeShop: yagombucks)
