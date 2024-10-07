//
//  StudentList.swift
//  ListDemo
//
//  Created by Bennett Lee on 10/2/24.
//

import SwiftUI


struct Student: Identifiable, Hashable {
    let id: UUID = UUID()
    let name: String
}


struct StudentCell: View {
    let student: Student

    var body: some View {
        HStack (spacing: 12.0) {
            Image(systemName: "person.badge.plus")
            VStack (alignment: .leading) {
                Text(student.name)
                    .font(.title2)
                Text("Student")
            }
        }
    }
}

struct StudentList: View {
    @State private var selection: UUID?
    let students: [Student]

    var body: some View {
        List(students, selection: $selection) {
            StudentCell(student: $0)
        }
        .onChange(of: selection) { oldValue, newValue in
            print("selection has changed \(oldValue) \(newValue)")
        }
        .refreshable {
            print("refreshing")
        }
        .listStyle(.insetGrouped)
    }
}

#Preview {
    StudentList(students: [
        Student(name: "John Smith"),
        Student(name: "Amy Smith"),
        Student(name: "Sarah Anderson")
    ])
}


