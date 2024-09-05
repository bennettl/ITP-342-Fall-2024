import Foundation



// Defition of instances
struct Person {
    // Properties - state that the struct holds
    let name: String

    // Methods - fucntionality that the instances can perform

    func greet() {
        print("hello, my name is \(name)")
    }

    // Initializer - create instances with custom state
    init(name: String) {
        self.name = name
    }
}

// Instantiation
let sam = Person(name: "Sam")
sam.greet()

let sarah = Person(name: "Sarah")
sarah.greet()


struct Rectangle {
    // Stored properties
    var width: Int
    var height: Int

    // Computed property
    var area: Int {
        width * height
//        get{
//            return width * height
//        }
//        set{
//            width = newValue / 2
//            height = newValue / 2
//        }
    }

//    init(width: Int, height: Int) {
//        self.width = width
//        self.height = height
//    }

     func turnAround() {

    }

}

// Memberwise initializer - get this for structs
let rect = Rectangle(width: 10, height: 20)
//var re/ct = Rectangle(width: 10, height: 10)


struct Student {
    let name: String
    
    static var numberOfStudents = 0

    static func doSomething() {
        print("doSomthing")
    }

    init(name: String) {
        self.name = name
        Student.numberOfStudents += 1
    }
    
}

let john = Student(name: "John")
let sally = Student(name: "Sally")
let joseph = Student(name: "Joseph")

Student.numberOfStudents
Student.doSomething()


class Computer {
    let name: String

    init(name: String) {
        self.name = name
    }

}

let mac = Computer(name: "Mac")
mac.name

let firstName = "Bennett"
let lastName = firstName
print(lastName)

func greet(name: String){

}

greet(name: firstName)


// Initialize the value
var name: String? = "Bennett"

// Accessing the value
// 1. Force unwrapping
print("Hello my name is \(name!)")

// 2. Conditional binding
if let name  {
    print(name)
}

// 3. Implicilty unwrapped optional

var middleName: String! = "Bennett"

// Accessing the value
print("Hello my name is \(middleName)")
print("Hello my name is \(middleName)")
print("Hello my name is \(middleName)")


// 4. Optional chaining
// 5. Nil coalescing



