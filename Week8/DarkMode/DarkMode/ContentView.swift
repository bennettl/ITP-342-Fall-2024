//
//  ContentView.swift
//  DarkMode
//
//  Created by Bennett Lee on 10/14/24.
//

import SwiftUI

let KEY_DARK_MODE = "isDarkMode"

struct ContentView: View {
    @State var isDarkMode = false
    var body: some View {
        VStack(alignment: .center) {
            Toggle("Dark Mode Demo", isOn: $isDarkMode)
            Button("Save to disk"){


                // 1. Where to save data?
                // Need a file path to our iOS fileStyle
                let documentDirectory = FileManager.default.urls(
                    for: .documentDirectory,
                    in: .userDomainMask
                ).first!
                let filePath = "\(documentDirectory)my-file.txt"
                print("FILE PATH: \(filePath)")

                // 2. What to save?
                // Saving a string to a filepath

                let msgString = "Text to save to a file"

                do {
                    let path = URL(string: filePath)!

                    try msgString.write(to: path, atomically: true, encoding: .utf8)
//                   try msgString.write(toFile: filePath,
//                                       atomically: true,
//                                       encoding: .utf8)
                } catch {
                   print("Could not save to file \(error)")
                }



            }
        }
        .onChange(of: isDarkMode, { oldValue, newValue in
            // Persist the change to user defaults
            UserDefaults.standard.set(newValue, forKey: KEY_DARK_MODE)
        })
        .preferredColorScheme(isDarkMode ? .dark : .light)
        .padding()
        .onAppear {
            isDarkMode = UserDefaults.standard.bool(forKey: KEY_DARK_MODE)
        }
    }
}

#Preview {
    ContentView()
}
