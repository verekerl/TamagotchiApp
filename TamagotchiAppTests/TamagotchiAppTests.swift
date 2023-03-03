//
//  TamagotchiAppTests.swift
//  TamagotchiAppTests
//
//  Created by Vereker, Luke (PRKB) on 14/01/2023.
//

import XCTest
@testable import TamagotchiApp

class TamagotchiAppTests: XCTestCase {

    func testTamagotchiAttributes() {
        let tamagotchi = Tamagotchi(height: 1.3, weight: 25, happiness: 7, age: 1, bathroom: false, isSick: false)
        XCTAssertEqual(tamagotchi.height, 1.3)
        XCTAssertEqual(tamagotchi.weight, 25)
        XCTAssertEqual(tamagotchi.happiness, 7)
        XCTAssertEqual(tamagotchi.age, 1)
        XCTAssertEqual(tamagotchi.bathroom, false)
        XCTAssertEqual(tamagotchi.isSick, false)
    }
    
    func testDisplayAllTamagotchiStats() {
        let tamagotchi = Tamagotchi(height: 1.3, weight: 25, happiness: 7, age: 1, bathroom: false, isSick: false)
        let expected = """
        Height: \(tamagotchi.height)m
        Weight: \(tamagotchi.weight)kg
        Happiness: \(tamagotchi.happiness)
        Alive: \(tamagotchi.age) years old
        Bathroom: \(tamagotchi.bathroom)
        Sick: \(tamagotchi.isSick)
        """
        let actual = tamagotchi.displayTamagotchiStats()
        XCTAssertEqual(actual,expected)
    }

}
