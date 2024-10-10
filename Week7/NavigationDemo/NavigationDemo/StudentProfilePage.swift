//
//  StudentProfilePage.swift
//  NavigationDemo
//
//  Created by Bennett Lee on 10/9/24.
//

import SwiftUI

struct StudentProfilePage: View {
    let student: Student
    var body: some View {
        VStack(alignment: .leading) {
            Text(student.name)
            Text(student.major)
            Text(student.bio)
        }
        .navigationTitle("Student Profile")
    }
}

#Preview {
    let student = Student(
        name: "John",
        major: "Business",
        bio: "I am a business student"
    )
    NavigationStack {
        StudentProfilePage(student: student)
    }
}
