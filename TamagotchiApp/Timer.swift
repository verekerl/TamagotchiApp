//
//  Timer.swift
//  TamagotchiApp
//
//  Created by Luke Vereker on 25/02/2023.
//

import Foundation

var timerCount = 0

let timer = Timer.scheduledTimer(withTimeInterval: 30, repeats: true) { _ in
    timerCount += 1
}
