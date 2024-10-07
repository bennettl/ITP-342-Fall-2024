//
//  StudentDeletableList.swift
//  ListDemo
//
//  Created by Bennett Lee on 10/2/24.
//

import SwiftUI

struct StudentDeletableList : View {
    @State var students = ["John", "Amy", "Kyle"]
    var body: some View {
        List($students, id: \.self, editActions: .delete){ $student in
            Text(student)
        }
    }
}

#Preview {
    StudentDeletableList()
}
