import Foundation

var greeting: String? = nil

if let greeting {
    print(greeting)
} else {
    print("default greeting")
}

print(greeting ?? "default greeting")


var firstName: String? = "Bennett"
var lastName: String? = "Lee"

if let firstName {
    if let lastName {
        print("\(firstName) \(lastName)")
    }
}


protocol Drivable {
    func turnLeft()
    func turnRight()
    func accelerate()
    func stop()
}

struct Mazda: Drivable {
    func turnLeft() {
        print("i'm a mazda turning left...")
    }
    
    func turnRight() {
    }
    
    func accelerate() {
    }
    
    func stop() {
    }

}

class Lexus: Drivable {

    func turnLeft() {
    }
    
    func turnRight() {
    }
    
    func accelerate() {
    }
    
    func stop() {
    }

}

// Polymorphism
let vehicles: Array<Drivable> = [Mazda(), Mazda(), Lexus()]

for vehicle in vehicles {
    vehicle.turnLeft()
}


struct Point : Hashable {
    let x: Int
    let y: Int
}

let pointA = Point(x: 10, y: 10)
let pointB = Point(x: 11, y: 10)
pointA == pointB


"90111" // where this is a valid zip code

func isValid(zipCode: String) -> Bool{
    // do validation work here
    return zipCode.count == 5
}

isValid(zipCode: "91111")


extension String {
    var isValidZipCode: Bool{
        return count == 5
    }

}

"90111".isValidZipCode
"Nam".lowercased()


"anything you want"

enum Color {
    case red
    case blue
    case green
}

Color.red


enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds
    case outOfStock
}

struct Item {
    let name: String
}

struct VendingMachine {
    func get(item: String) throws -> Item {
        if item == "water" {
            throw VendingMachineError.outOfStock
        }

        return Item(name: item)
    }
}

do {
    let vendingMachine1 = VendingMachine()
    let item = try vendingMachine1.get(item: "water")
    print("i got \(item.name)")
} catch VendingMachineError.outOfStock {
    // send an email to vendor to order more items
} catch VendingMachineError.insufficientFunds {
    // too bad, womp womp
}


let vendingMachine1 = VendingMachine()
let item = try! vendingMachine1.get(item: "water")
print("i got \(item.name)")
