//
//  ContentView.swift
//  HelloSwiftui
//
//  Created by Bennett Lee on 9/16/24.
//

import SwiftUI


struct CustomTextField : View {
    let label: String
    @Binding var text: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(.subheadline)
                .foregroundColor(.blue)
            TextField("Test", text: $text)
        }
    }
}


struct ContentViewCustomTextField: View {
    @State var counter = 0
    @State var firstName = ""
    @State var lastName = ""

    var body: some View {
        VStack(spacing: 24){
            CustomTextField(
                label: "First Name",
                text: $firstName
            )
            CustomTextField(
                label: "Last Name",
                text: $lastName
            )
        }
        .padding()
    }

    func submitForm() {
        print("Submitting form \(firstName) \(lastName)")
    }
}

