//
//  ContentView.swift
//  TamagotchiApp
//
//  Created by Vereker, Luke (PRKB) on 14/01/2023.
//

import SwiftUI

struct ContentView: View {
    var tamagotchi = Tamagotchi(height: 1.3, weight: 25, happiness: 7, age: 1, bathroom: false, isSick: false)
    @State private var tamagotchiMeal = false
    @State private var tamagotchiSnack = false
    @State private var remainingTime = 7
    @State private var timerBathroom = 15
    @State private var timerSick = 20
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let bathroomTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let sickTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text("\(remainingTime)")
                .onReceive(timer) { _ in
                    if remainingTime > 0 {
                        self.remainingTime -= 1
                    } else if remainingTime == 0 {
                        tamagotchi.weight -= 3
                        tamagotchi.age += 1
                        tamagotchi.happiness -= 1
                        remainingTime = 7
                    }
                }
                .onReceive(bathroomTimer) { _ in
                    if timerBathroom > 0 {
                        self.timerBathroom -= 1
                    } else if timerBathroom == 0 {
                        tamagotchi.bathroom = true
                        timerBathroom = 15
                    }
                }
                .onReceive(sickTimer) { _ in
                    if timerSick > 0 {
                        self.timerSick -= 1
                    } else if timerSick == 0 {
                        tamagotchi.isSick = true
                        timerSick = 20
                    }
                }
            
                .foregroundColor(.red)
            Form {
                Text("Bob")
                VStack(alignment: .leading, spacing: 20) {
                    Text("\(tamagotchi.displayTamagotchiStats())")
                }
                
                Section {
                    Button("Feed Bob Meal", action: {
                        tamagotchi.weight += 5
                    })
                    Button("Feed Bob Snack", action: {
                        tamagotchi.weight += 3
                    })
                }
                
                Section {
                    Button("Play Game", action: {
                        tamagotchi.happiness += 1
                    })
                }
                
                Section {
                    Button("Get Cleaned Up", action: {
                        tamagotchi.bathroom = false
                    })
                    Button("Have Medicine", action: {
                        tamagotchi.isSick = false
                    })
                }
            }
        }
        if tamagotchi.weight > 50 {
            DieView()
            Text("You die of obesity lol")
        } else if tamagotchi.happiness <= 3 {
            DieView()
            Text("You die of depression lol")
        } else if tamagotchi.age >= 20 {
            DieView()
            Text("You die of oldddd bro lol")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
