//
//  ContentView.swift
//  ListDemo
//
//  Created by Bennett Lee on 10/2/24.
//

import SwiftUI

extension String : Identifiable {
    public var id: String {
        self
    }
}

struct ContentView: View {
    
    let settings = ["General", "Wifi", "Airplane Mode"]
    var body: some View {
        List(settings, rowContent: { setting in
            Text(setting)
        })
//        List(content: {
//            Text("General")
//            Text("Wi-Fi")
//            Text("Airplane Mode")
//        })

    }
}

#Preview {
    ContentView()
}
