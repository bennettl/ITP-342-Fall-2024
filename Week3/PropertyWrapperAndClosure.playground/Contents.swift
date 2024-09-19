import Foundation


@propertyWrapper
struct Logger {
    var internalString = ""

    var wrappedValue: String {
        get {
            print("this is being access at \(Date())")
            return internalString
        }
        set {
            print("this is being set at \(Date())")
            internalString = newValue
        }
    }
}

@propertyWrapper
struct Uppercase {
    var internalString = ""

    var wrappedValue: String{
        get {
            return internalString
        }
        set{
            internalString = newValue.uppercased()
        }
    }

}

struct Person {
    @Uppercase var firstName: String
    @Logger var lastName: String

    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
}

var person = Person(firstName: "Joseph", lastName: "Smith")
person.firstName = "John"
person.firstName
person.lastName


func sum(x: Int, y: Int) -> Int {
    return x + y
}


sum(x: 10, y: 20)


var names: Array<String> = ["Bonnie", "Adam", "Carl"]
var names2: Array<String> = ["Bonnie", "Adam", "Carl"]

func alphabetical(s1: String, s2: String) -> Bool {
    return s1 < s2
}

func reverseAlphabetical(s1: String, s2: String) -> Bool {
    return s1 > s2
}

names.sort(by: alphabetical)
print(names)


names2.sort(by: reverseAlphabetical)
print(names2)


names.sort(by: { (s1: String, s2: String) -> Bool in
    return s1 < s2
})


// Type Inference
names.sort(by: { (s1, s2) in
    return s1 < s2
})

// Single expression closure
names.sort(by: { (s1, s2) in s1 < s2 })

// Shorthand argument label
names.sort(by: { $0 < $1 })

// Trailing closure syntax
names.sort { $0 < $1 }

