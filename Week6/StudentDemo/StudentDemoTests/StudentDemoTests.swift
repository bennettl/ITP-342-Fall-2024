//
//  StudentDemoTests.swift
//  StudentDemoTests
//
//  Created by Bennett Lee on 9/30/24.
//

import XCTest
@testable import StudentDemo

final class StudentDemoTests: XCTestCase {
    let studentManager = StudentManager()

    // Executing at the beginning of a XCTestCase
    override class func setUp() {
    }

    // Executed at the beginning of each unit test
    override func setUp() {
    }

    // Execute at the end of each unit test
    override func tearDown() {
        studentManager.clear()
    }

    func testInsertStudent(){
        // Setup the context
        let previousCount = studentManager.numberOfStudents

        // Perform the operation
        studentManager.insert(student: Student(name: "John"), at: 0)

        // Run the assertion
        let newCount = studentManager.numberOfStudents
        XCTAssertEqual(newCount, previousCount + 1)
    }

    func testInsertStudentObject(){
        // Setup the context
        let previousCount = studentManager.numberOfStudents
        let name = "John"

        // Perform the operation
        studentManager.insert(student: Student(name: name), at: 0)

        // Run the assertion
        let newCount = studentManager.numberOfStudents
        XCTAssertEqual(newCount, previousCount + 1)

        let student = studentManager.student(at: 0)
        XCTAssertEqual(student.name, name)
    }

}
