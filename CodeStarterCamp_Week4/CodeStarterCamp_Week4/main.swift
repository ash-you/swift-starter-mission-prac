//
//  main.swift
//  CodeStarterCamp_Week4
//
//  Created by 유연수 on 2022/07/01.
//

import Foundation

var bodyCondition: BodyCondition = BodyCondition()
var hellRoutine: Routine = Routine(name: "hellRoutine")

hellRoutine.addExercise(새천년체조, 오래달리기, 윗몸일으키기, 동적휴식, 스쿼트, 스쿼트, 동적휴식, 오래달리기)
bodyCondition.doExcercises(select: hellRoutine)
