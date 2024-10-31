//
//  ContentView.swift
//  GridDemo
//
//  Created by Bennett Lee on 10/30/24.
//

import SwiftUI

struct Cell : View {
    let color: Color
    var body: some View {
        RoundedRectangle(cornerRadius: 24.0)
            .fill(color)
            .frame(height: 100)
    }
}

struct ContentView: View {
    var colors: [Color]

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    init() {
        colors = []
        for _ in 0..<30 {
            // 0-1
            let red = CGFloat(Int.random(in: 0..<255))/255.0
            let green = CGFloat(Int.random(in: 0..<255))/255.0
            let blue = CGFloat(Int.random(in: 0..<255))/255.0

            let randomColor = Color(
                uiColor: UIColor(
                    red: red,
                    green: green,
                    blue: blue,
                alpha: 1.0
                )
            )

            colors.append(randomColor)
        }
    }

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(colors, id: \.self) {
                    Cell(color: $0)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
