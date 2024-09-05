import Foundation


// This is a singlecomment

/**
This is
 a multiline
 comment
 */

//"C"
//"A"
//"🤷🏻‍♂️"
//
//"This is a sentence"
//"whole number"
//
//-10
//0
//10
//
//// Float -> less precision, less storage
//// This is actually defaulted to a double, we will discuss later how to make it a float
//12.30
//
//// Double -> more precision, more storage
//12.330
//
//true
//false
//
//
//let firstName: String = "Bennett"
//
//var amount = 100
//amount = 90
//
//
//let favoriteNumber = 42
//print("My favorite number is \(favoriteNumber)")
//print(firstName)
//
//10 + 2
//10 - 2
//10 * 2
//10 / 3.0
//10 % 2
//
//true || false
//true && false
//!true
//
//5 > 10
//
//
//let favoriteColor = "red"
//
//if favoriteColor == "blue" {
//    print("me too")
//} else if favoriteColor == "red" {
//    print("red is ok")
//} else if favoriteColor == "black" {
//    print("black is ok")
//} else {
//    print("ok")
//}
//
//switch favoriteColor {
//    case "blue", "mint", "lavender":
//        print("me too")
//    case "red":
//        print("red is ok")
//    case "black":
//        print("black is ok")
//    default:
//        print("ok")
//}
//
//switch 40 {
//    case 10...20: // full range operator
//        print("20")
//    case 30..<40: // half-open range operator
//        print("40")
//    default:
//        print("everything else")
//}
//
//10 < 20
//
//// Range
//10...20 // including 20
//10..<20 // not including 20
//
//for number in 10..<20 {
//    print("for - index \(number)")
//}
//
//for number in -20...20 {
//    print("backwards - index \(number)")
//}
//
//var index = 10
//
//while index < 20 {
//    print("while - index \(index)")
////    index = index + 1
//    index += 1
//}
//
//
//let minuteInterval = 5
//let minutes = 60
//for tickMark in stride(from: 0, to: -60, by: -10) {
//    print("stride - \(tickMark)")
//  // render the tick mark every 5 minutes (0, 5, 10, 15 ... 45, 50, 55)
//}



// Functions

let firstName = "Bennett"
let lastName = "Lee"
print("Hello \(firstName) \(lastName)")

// DRY - Don't repeat yourself

// Definition - author the logic of the function, no code is actually execute
//func greet() {
//    let firstName = "Bennett"
//    let lastName = "Lee"
//    print("Hello there, \(firstName) \(lastName)")
//}

// Invocation - actual code is being run
//greet()
//greet()
//greet()
//greet()
//greet()

// Inputs
//func greet(firstName: String, lastName: String){
//    print("Hello there, \(firstName) \(lastName)")
//}
//
//// Place that we invoke the function -> callsite
//greet(firstName: "Bennett", lastName: "Lee")


// Parameter is what is defined as an input
// Argument is what you actually pass in

// Default argument
//func greet(firstName: String, lastName: String = "Smith"){
//    print("Hello there, \(firstName) \(lastName)")
//}
//
//greet(firstName: "Bennett")


//// Omitting argument labels
//func greet(_ firstName: String, _ lastName: String){
//    print("Hello there, \(firstName) \(lastName)")
//}
//
//// Place that we invoke the function -> callsite
//greet("Bennett", "Lee")


// Custom argument labels
func greet(_ firstName: String, with greeting: String){
    print("\(greeting), \(firstName)")
}

// Place that we invoke the function -> callsite
greet("Bennett", with: "Hey")


// Output

//func sum(x: Int, y: Int) -> Int {
//    return x + y
//}
//
//sum(x: 10, y: 20)
//
//// Returning multiple items via tuple
//// Status
//// 200, "Ok"
//func makeNetworkRequest() -> (Int, String) {
//    return (200, "Ok")
//}
//
//let (status, message) = makeNetworkRequest()
//status
//message

// Variadic parameters

func sum(numbers: Int...) -> Int {
    var result = 0

    for number in numbers {
        result += number
    }

    return result
}

sum(numbers: 10, 30, 40, -5)












