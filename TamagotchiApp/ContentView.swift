//
//  ContentView.swift
//  TamagotchiApp
//
//  Created by Vereker, Luke (PRKB) on 14/01/2023.
//

import SwiftUI

struct ContentView: View {
    var tamagotchi = Tamagotchi(name: "Bob", height: 1.3, weight: 25, happiness: 7, age: 1, bathroom: false, isSick: false)
    @State private var tamagotchiMeal = false
    @State private var tamagotchiSnack = false
    @State private var remainingTime = 30
    @State private var goBathroom = false
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        let tamagotchiMealBinding = Binding<Bool> (
            get: {self.tamagotchiMeal},
            set: {newValue in
                self.tamagotchiMeal = newValue
                if newValue == true {
                    tamagotchi.weight += 3
                } else {
                    tamagotchi.weight += 0
                }
            }
        )
        
        let tamagotchiSnackBinding = Binding<Bool> (
            get: {self.tamagotchiSnack},
            set: {newValue in
                self.tamagotchiSnack = newValue
                if newValue == true {
                    tamagotchi.weight += 1
                } else {
                    tamagotchi.weight += 0
                }
            }
        )
        
        VStack {
            Text("\(remainingTime)")
                .onReceive(timer) { _ in
                    if remainingTime > 0 {
                        self.remainingTime -= 1
                    } else if remainingTime == 0 {
                        tamagotchi.weight -= 3
                        tamagotchi.age += 1
                        remainingTime = 30
                    }
                }
                .foregroundColor(.red)
            Form {
                VStack(alignment: .leading, spacing: 20) {
                    Text("\(tamagotchi.displayTamagotchiStats())")
                }
                Section {
                    Toggle("Feed Tamagotchi Meal", isOn: tamagotchiMealBinding)
                    Toggle("Feed Tamagotchi Snack", isOn: tamagotchiSnackBinding)
                }
                VStack() {
                    Button("Get Cleaned Up", action: {
                        print("")
                    })
                    Button("Have Medicine", action: {
                        print("")
                    })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
