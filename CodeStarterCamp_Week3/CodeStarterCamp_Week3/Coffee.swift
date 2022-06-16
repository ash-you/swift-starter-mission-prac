//
//  Coffee.swift
//  CodeStarterCamp_Week3
//
//  Created by 유연수 on 2022/06/17.
//

import Foundation

enum Coffee: String, CaseIterable {
    case americano = "아메리카노"
    case latte = "라떼"
    case espresso = "에스프레소"
    
    var price: Int {
        switch self {
        case .americano:
            return 1000
        case .latte:
            return 1500
        case .espresso:
            return 2000
        }
    }
}
