//
//  bodyCondition.swift
//  CodeStarterCamp_Week4
//
//  Created by 유연수 on 2022/07/01.
//

import Foundation

class BodyCondition {
    var 상체근력: Int = 0
    var 하체근력: Int = 0
    var 근지구력: Int = 0
    var 피로도: Int = 0
    
    func doExcercises(select routine: Routine) {
        let lastIndex = routine.exercises.endIndex - 1
        
        if routine.exercises.count == 0 {
            print("해당 루틴은 완성되지 않은 루틴입니다. 선택할 수 없습니다.")
        } else {
            if let name = routine.name {
                print("""
        --------------
        \(name)을 시작합니다.
        """)
                
                for index in 0...lastIndex {
                    print("\(routine.exercises[index].name)")
                    routine.exercises[index].action(self)
                }
                
                print("""
        --------------
        현재의 컨디션은 다음과 같습니다.
        상체근력: \(self.상체근력)
        하체근력: \(self.하체근력)
        근지구력: \(self.근지구력)
        피로도: \(self.피로도)
        """)
            }
        }
    }
}
