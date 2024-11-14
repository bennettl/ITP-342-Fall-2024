//
//  ContentView.swift
//  LocationDemo
//
//  Created by Bennett Lee on 11/4/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationViewModel = LocationViewModel()
    
    var body: some View {
        VStack {
            Button("Get Location") {
                locationViewModel.getLocation()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
