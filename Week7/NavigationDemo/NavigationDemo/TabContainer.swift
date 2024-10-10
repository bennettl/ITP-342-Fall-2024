//
//  TabContainer.swift
//  NavigationDemo
//
//  Created by Bennett Lee on 10/9/24.
//

import SwiftUI

struct TabContainer: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            Text("Search")
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            Text("Notification")
                .tabItem {
                    Label("Notification", systemImage: "bell")
                }
            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}

#Preview {
    TabContainer()
}
