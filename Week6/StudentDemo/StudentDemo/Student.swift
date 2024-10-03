//
//  Student.swift
//  StudentDemo
//
//  Created by Bennett Lee on 9/30/24.
//

import Foundation

// Model
struct Student {
    let name: String
}

class StudentManager {
   private var students = [Student]()

   var numberOfStudents: Int{
      students.count
   }

   func student(at index: Int) -> Student{
      return students[index]
   }

   func insert(student: Student, at index: Int){
      students.insert(student, at: index)
   }

   func remove(at index: Int){
      students.remove(at: index)
   }

    func clear(){
        students = []
    }
}
