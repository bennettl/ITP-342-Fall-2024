//
//  ContentView.swift
//  MapDemo
//
//  Created by Bennett Lee on 11/4/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    let coordinates = CLLocationCoordinate2D(
        latitude: 34.03937726897788,
        longitude: -118.2327104061501
    )

    let urth = CLLocationCoordinate2D(
        latitude: 34.04216533472924,
        longitude: -118.23524590588416
    )

    let ramen = CLLocationCoordinate2D(
        latitude: 34.043371273951216,
        longitude: -118.2337444380817
    )

    var body: some View {
        NavigationStack {
            VStack {
                Map {
                    Marker("Blue Bottle", coordinate: coordinates)
                        .tint(.teal)
                     Marker("Urth Cafe", systemImage: "person", coordinate: urth)

                    Annotation("Ramen", coordinate: ramen) {
                        NavigationLink {
                            Text("Ramen detail page")
                        } label: {
                            Circle()
                                .fill(Color.teal)
                                .frame(height: 300)
                                .opacity(0.5)
                        }
                    }
                }
            }
            .navigationTitle("Places to eat")
        }
    }
}

#Preview {
    ContentView()
}
