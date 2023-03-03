//
//  DieView.swift
//  TamagotchiApp
//
//  Created by Luke Vereker on 03/03/2023.
//

import SwiftUI

struct DieView: View {
    var tamagotchi = Tamagotchi(height: 1.3, weight: 25, happiness: 7, age: 1, bathroom: false, isSick: false)
    var body: some View {
        VStack {
            Text("YOU DIED BOZO")
            Spacer()
            Text("Your Stats: ")
            Text("Height: \(tamagotchi.height)m")
            Text("Weight: \(tamagotchi.weight)kg")
            Text("Happiness: \(tamagotchi.happiness)")
            Text("Age: \(tamagotchi.age) years old")
            Spacer()
        }
    }
}

struct DieView_Previews: PreviewProvider {
    static var previews: some View {
        DieView()
    }
}
