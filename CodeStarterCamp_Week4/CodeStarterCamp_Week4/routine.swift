//
//  routine.swift
//  CodeStarterCamp_Week4
//
//  Created by 유연수 on 2022/07/04.
//

import Foundation

struct Routine {
    var name: String!
    var exercises: [Exercise] = []
    
    init(name: String!) {
        self.name = name
    }
    
    mutating func addExercise (_ exercise: Exercise...) {
        for index in 0..<exercise.count {
            self.exercises.append(exercise[index])
        }
    }
}
