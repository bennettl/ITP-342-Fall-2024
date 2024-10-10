//
//  Student.swift
//  NavigationDemo
//
//  Created by Bennett Lee on 10/9/24.
//

import Foundation

// Model
struct Student : Identifiable, Hashable{
    let id = UUID()
    let name: String
    let major: String
    let bio: String
}
