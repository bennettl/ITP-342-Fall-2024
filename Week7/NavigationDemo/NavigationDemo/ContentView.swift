//
//  ContentView.swift
//  NavigationDemo
//
//  Created by Bennett Lee on 10/9/24.
//

import SwiftUI

struct GreenPage: View {
    var body: some View {
        Color.green
    }
}

struct BluePage: View {
    var body: some View {
        ZStack {
            Color.blue
            NavigationLink("Go to green page") {
                GreenPage()
            }
            .foregroundStyle(Color.white)
        }
        .navigationTitle("Blue Page")
        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct RedPage: View {
    var body: some View {
        ZStack {
            Color.red
            NavigationLink("Go to blue page") {
                BluePage()
            }
            .foregroundStyle(Color.white)
        }
        .navigationTitle("Red Page")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    // action -> what happens when the user taps on the button
                } label: {
                    Image(systemName: "person")
                }
            }
//            ToolbarItem(placement: .principal) {
//                Image(systemName: "heart")
//            }
            ToolbarItem(placement: .topBarTrailing) {
                Button("Done") {
                    // action -> what happens when the user taps on the button
                }
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack{
            RedPage()
        }
    }
}

#Preview {
    ContentView()
}
