//
//  Tamagotchi.swift
//  TamagotchiApp
//
//  Created by Vereker, Luke (PRKB) on 14/01/2023.
//

import Foundation

class Tamagotchi {
    let name: String
    let height: Double
    var weight: Int
    var happiness: Int
    var age: Int
    var bathroom: Bool
    var isSick: Bool
    
    init(name: String, height: Double, weight: Int, happiness: Int, age: Int, bathroom: Bool, isSick: Bool) {
        self.name = name
        self.height = height
        self.weight = weight
        self.happiness = happiness
        self.age = age
        self.bathroom = bathroom
        self.isSick = isSick
    }
    
    func displayTamagotchiStats() -> String {
        return """
            Name: \(name)
            Height: \(height)m
            Weight: \(weight)kg
            Happiness: \(happiness)
            Alive: \(age) years old
            Bathroom: \(bathroom)
            Sick: \(isSick)
            """
    }
}
