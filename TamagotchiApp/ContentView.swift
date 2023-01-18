//
//  ContentView.swift
//  TamagotchiApp
//
//  Created by Vereker, Luke (PRKB) on 14/01/2023.
//

import SwiftUI

struct ContentView: View {
    var tamagotchi = Tamagotchi(name: "Bob", height: 1.3, weight: 25, happiness: 7, alive: true)
    
    var body: some View {
        Text("\(tamagotchi.displayTamagotchiStats())")
            .padding()
        
        Form {
            VStack(alignment: .leading, spacing: 20) {
                Text("\(tamagotchi.displayTamagotchiStats())")
                Button("Feed Tamagotchi", action: {
                    tamagotchi.weight += 2
                    tamagotchi.happiness += 1
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
