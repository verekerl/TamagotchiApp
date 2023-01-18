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
    let alive: Bool
    
    init(name: String, height: Double, weight: Int, happiness: Int, alive: Bool) {
        self.name = name
        self.height = height
        self.weight = weight
        self.happiness = happiness
        self.alive = alive
    }
    
    func displayTamagotchiStats() -> String {
        return """
            Name: \(name)
            Height: \(height)m
            Weight: \(weight)kg
            Happiness: \(happiness)
            Alive: \(alive)
            """
    }
}
