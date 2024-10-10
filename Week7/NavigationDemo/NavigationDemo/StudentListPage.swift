//
//  StudentListPage.swift
//  NavigationDemo
//
//  Created by Bennett Lee on 10/9/24.
//

import SwiftUI

// Value base navigation

struct StudentListPage: View {
    let students: [Student]
    var body: some View {
        NavigationStack {
            List(students) {
                StudentRowValueDestination(student: $0)
            }
            .navigationTitle("Students")
            .navigationDestination(for: Student.self) { student in
                StudentProfilePage(student: student)
            }
            // For navigating to other types, render different destination views
//            .navigationDestination(for: Video.self) { video in
//                VideoPage(viedeo)
//            }
//            .navigationDestination(for: Album.self) { album in
//                AlbumPage(album)
//            }
        }
    }
}

#Preview {
    StudentListPage(students: students)
}
