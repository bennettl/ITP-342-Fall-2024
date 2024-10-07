//
//  ListDemoApp.swift
//  ListDemo
//
//  Created by Bennett Lee on 10/2/24.
//

import SwiftUI

@main
struct ListDemoApp: App {
    var body: some Scene {
        WindowGroup {
            StudentList(students: [
                Student(name: "John Smith"),
                Student(name: "Amy Smith"),
                Student(name: "Sarah Anderson")
            ])
        }
    }
}
