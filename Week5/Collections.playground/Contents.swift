import Foundation


// Creating an empty array

// Arrays

// Create
var names : Array<String> = ["John", "Amy", "Sarah"]
let numbers : Array<Int> = [1,2,3]

// Access elements
names[0]
names[1]

for number in numbers {
    print("========\(number)")
}

for (index, name) in names.enumerated() {
    print("========\(index + 1). \(name)")
}

// Mutating

// Add
names.append("Nitya")
names

// Remove
names.remove(at: 0)
names

names.contains("John")
names.last

// Dictionaries

var airports: Dictionary<String, String> = [
    "JFK": "New York",
    "LAX": "Los Angeles",
    "SFO": "San Francisco"
]

// Access
let airport = airports["SJC"]

for (airport, city) in airports{
    print("\(airport) - \(city)")
}

// Add
airports["SJC"] = "San Jose"
airports

// Remove
airports["JFK"] = nil
airports

airports.count
airports.isEmpty


