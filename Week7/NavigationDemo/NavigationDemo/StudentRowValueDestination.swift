//
//  StudentRowValueDestination.swift
//  NavigationDemo
//
//  Created by Bennett Lee on 10/9/24.
//

import SwiftUI

struct StudentRowValueDestination: View {
    let student: Student
    var body: some View {
        NavigationLink(value: student) {
            VStack (alignment: .leading) {
                Text(student.name)
                Text(student.major)
            }
        }
    }
}

#Preview {
    StudentRowValueDestination(student: students.first!)
}
