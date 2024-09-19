//
//  ContentView.swift
//  SwiftUIHello
//
//  Created by Bennett Lee on 9/11/24.
//

import SwiftUI

struct Greeting : View{
    let text: String

    var body: some View {
        Text(text)
            .bold()
            .italic()
            .font(.title)
            .foregroundStyle(.blue)
    }
}

struct ContentView: View {
    var body: some View {
        VStack{
           Text("Hello")
                .background(Color.red)
                .frame(width: 300)
            Text("Another text")
        }
    }
}

#Preview {
    ContentView()
}
