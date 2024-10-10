//
//  StudentRowEmbdedDestination.swift
//  NavigationDemo
//
//  Created by Bennett Lee on 10/9/24.
//

import SwiftUI

struct StudentRowEmbedDestination: View {
    let student: Student
    var body: some View {
        NavigationLink {
            StudentProfilePage(student: student)
        } label: {
            VStack (alignment: .leading) {
                Text(student.name)
                Text(student.major)
            }
        }
    }
}

#Preview {
    StudentRowEmbedDestination(student: students.first!)
}
