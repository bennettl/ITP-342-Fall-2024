//
//  ContentView.swift
//  MadLibsDemo
//
//  Created by Bennett Lee on 9/23/24.
//

import SwiftUI

struct ContentView: View {
    @State var name = "Sam"
    @State var city = "Vegas"
    @State var verb = "Gamble"
    @State var age = "21"

    @State var lessOrMoreIndex = 1

    @State var animalIndex = 2
    @State var favoriteNumber = 42.0
    @State var numberOfPets = 3
    @State var isHappyEnding = false

    @State var showAlert = false

    let TextFieldPadding = 12.0
    let LessIndex = 0
    let MoreIndex = 1

    var fullStory : String {
        let animals = ["Dog", "Flamingo", "Tiger", "Whale"]

        var story = "At the age of \(age), \(name) took a trip to \(city) with \(numberOfPets) pets in order to \(verb) with an \(animals[animalIndex]). \(name) decided to buy \(Int(favoriteNumber))."

        if isHappyEnding {
            story += " Now they live happily ever after."
        } else {
            story += " Things did not go too well =("
        }

        return story
    }

    var body: some View {
        VStack(spacing: 12.0) {
            Image("madlibs")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 24)

            TextField("Name", text: $name)
                .padding(TextFieldPadding)
                .background(Color.white)

            TextField("City", text: $city)
                .padding(TextFieldPadding)
                .background(Color.white)

            TextField("Verb", text: $verb)
                .padding(TextFieldPadding)
                .background(Color.white)

            TextField("Age", text: $age)
                .padding(TextFieldPadding)
                .keyboardType(.numberPad)
                .background(Color.white)

            Picker("LessOrMore", selection: $lessOrMoreIndex) {
                Text("Less").tag(LessIndex)
                Text("More").tag(MoreIndex)
            }
            .pickerStyle(.segmented)

            if lessOrMoreIndex == MoreIndex {
                VStack (spacing: 16.0) {
                    Picker("Animal", selection: $animalIndex) {
                        Text("Dog").tag(0)
                        Text("Flamingo").tag(1)
                        Text("Tiger").tag(2)
                        Text("Whale").tag(3)
                    }
                    .pickerStyle(.segmented)

                    HStack{
                        Text(String(Int(favoriteNumber)))
                        Slider(value: $favoriteNumber, in: 0...100)
                    }

                    Stepper("Pets \(numberOfPets)", value: $numberOfPets)

                    Toggle("Happy Ending?", isOn: $isHappyEnding)
                }
                .padding()
                .background(Color.white)
//                .opacity(
//                    lessOrMoreIndex == LessIndex ? 0.0 : 1.0
//                )
            }

            Button("Create Story") {
                print(fullStory)
                showAlert = true
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.white)

            Spacer()

        }
        .padding()
        .background(Color.yellow)
//        .alert("Title", isPresented: $showAlert) {
//            Button("Default"){}
//            Button("Cancel", role: .cancel){}
//            Button("Destructive", role: .destructive){}
//        }
        .alert("The Story", isPresented: $showAlert, actions: {
            Button("Got it 🙃"){}
        }, message: {
            Text(fullStory)
        })

    }
}

#Preview {
    ContentView()
}
