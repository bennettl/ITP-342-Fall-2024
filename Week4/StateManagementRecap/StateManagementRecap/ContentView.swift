//
//  ContentView.swift
//  StateManagementRecap
//
//  Created by Bennett Lee on 9/18/24.
//

import SwiftUI
import Combine


struct ContentView: View {
    @State var selection = 0
    @State private var celsius: Double = 0

    var body: some View {
        LazyVStack {

            Circle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
                .overlay {
                    Circle()
                        .fill(Color.green)
                        .frame(width: 150, height: 150)
                }






        }
        .padding(24)

    }

}

#Preview {
    ContentView()
}
