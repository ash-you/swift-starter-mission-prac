//
//  exercise.swift
//  CodeStarterCamp_Week4
//
//  Created by 유연수 on 2022/07/01.
//

import Foundation

struct Exercise {
    let name: String
    let action: (_ bodyCondition: BodyCondition) -> Void
}

let 윗몸일으키기: Exercise = Exercise(name: "윗몸일으키기", action: { (_ bodyCondition: BodyCondition) in
    bodyCondition.상체근력 += Int.random(in: 10...20)
    bodyCondition.피로도 += Int.random(in: 10...20)
})

let 스쿼트: Exercise = Exercise(name: "스쿼트", action: { (_ bodyCondition: BodyCondition) in
    bodyCondition.하체근력 += Int.random(in: 20...30)
    bodyCondition.피로도 += Int.random(in: 10...20)
})

let 오래달리기: Exercise = Exercise(name: "오래달리기", action: { (_ bodyCondition: BodyCondition) in
    bodyCondition.근지구력 += Int.random(in: 20...30)
    bodyCondition.상체근력 += Int.random(in: 5...10)
    bodyCondition.하체근력 += Int.random(in: 5...10)
    bodyCondition.피로도 += Int.random(in: 20...30)
})

let 동적휴식: Exercise = Exercise(name: "동적휴식", action: { (_ bodyCondition: BodyCondition) in
    bodyCondition.피로도 -= Int.random(in: 5...10)
})

let 새천년체조: Exercise = Exercise(name: "새천년체조", action: { (_ bodyCondition: BodyCondition) in
    bodyCondition.근지구력 += Int.random(in: 1...5)
    bodyCondition.상체근력 += Int.random(in: 1...5)
    bodyCondition.하체근력 += Int.random(in: 1...5)
    bodyCondition.피로도 += Int.random(in: 1...5)
})
