//
//  ContentView.swift
//  StudentDemo
//
//  Created by Bennett Lee on 9/30/24.
//

import SwiftUI


struct ContentView: View {
    @State var width = 100.0

    var body: some View {
        Circle()
            .fill(Color.teal)
            .frame(width: width)
            .padding()
            .onTapGesture(count: 3, perform: {
                width = width == 100.0 ? 200.0 : 100.0
            })
            .onTapGesture {

            }

    }
}

#Preview {
    ContentView()
}
