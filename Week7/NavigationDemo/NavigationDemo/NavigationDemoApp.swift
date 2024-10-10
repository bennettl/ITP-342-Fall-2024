//
//  NavigationDemoApp.swift
//  NavigationDemo
//
//  Created by Bennett Lee on 10/9/24.
//

import SwiftUI

let students = [
    Student(
        name: "John",
        major: "Business",
        bio: "I am a business student"
    ),
    Student(
        name: "Sarah",
        major: "Physics",
        bio: "I am a Physics student"
    ),
    Student(
        name: "Andy",
        major: "Computer Science",
        bio: "I am a CS student"
    )
]

@main
struct NavigationDemoApp: App {
    var body: some Scene {
        WindowGroup {
            StudentListPage(students: students)
        }
    }
}
