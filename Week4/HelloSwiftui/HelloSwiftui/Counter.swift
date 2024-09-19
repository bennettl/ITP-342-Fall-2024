//
//  Counter.swift
//  HelloSwiftui
//
//  Created by Bennett Lee on 9/16/24.
//

import SwiftUI


struct ContentViewCounter: View {
  @State var id = UUID()

  var body: some View {
    VStack {
      Button("Change id") {
        id = UUID()
      }
      Text("Current id: \(id)")

      ButtonView()
    }.padding()
  }
}

@Observable
class Counter {
  var currentValue: Int = 0
}


struct ButtonView: View {
  @State var counter = Counter()

  var body: some View {
    VStack {
      Text("Counter is tapped \(counter.currentValue) times")
      Button("Increase") {
        counter.currentValue += 1
      }
    }.padding()
  }
}
