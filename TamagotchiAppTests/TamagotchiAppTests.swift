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
        let tamagotchi = Tamagotchi(name: "Bob", height: 1.3, weight: 25, happiness: 7, alive: true)
        XCTAssertEqual(tamagotchi.name, "Bob")
        XCTAssertEqual(tamagotchi.height, 1.3)
        XCTAssertEqual(tamagotchi.weight, 25)
        XCTAssertEqual(tamagotchi.happiness, 7)
        XCTAssertEqual(tamagotchi.alive, true)
    }

}
