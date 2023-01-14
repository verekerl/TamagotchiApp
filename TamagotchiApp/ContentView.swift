//
//  ContentView.swift
//  TamagotchiApp
//
//  Created by Vereker, Luke (PRKB) on 14/01/2023.
//

import SwiftUI

struct ContentView: View {
    let tamagotchi = Tamagotchi(name: "Bob", height: 1.3, weight: 25, happiness: 7, alive: true)
    
    var body: some View {
        Text("Hello")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
