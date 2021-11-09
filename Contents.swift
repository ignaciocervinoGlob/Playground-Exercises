import UIKit
import XCTest

/* Exercise 1:
 
 Given the variable distance:

 let distance: UInt = 10

 Write a switch using interval matching that...

 Prints "Here" if distance is 0.

 Prints "Immediate vicinity" if distance is less than 5 but more than 0.

 Prints "Near" if distance is between 5 and 15, including 15.

 Prints "Kind of far" if distance is more than 15 and less or equal to 40.

 Prints "Far" if distance exceeds 40.
 */
class DistanceCalculator {
    func calculateDistance(distance: UInt) -> String {
        switch distance {
            case 0:
                return "Here"
            case 1..<5:
                return "Immediate vicinity"
            case 5...15:
                return "Near"
            case 16...40:
                return "Kind of far"
            default:
                return "Far"
        }
    }
}

class DistanceCalculatorTest: XCTestCase {
    func testAll() throws {
        let distanceCalculator = DistanceCalculator()
        let distanceStringHere = distanceCalculator.calculateDistance(distance: 0)
        let distanceStringInmediate = distanceCalculator.calculateDistance(distance: 3)
        XCTAssertEqual("Here", distanceStringHere)
        XCTAssertEqual("Immediate vicinity", distanceStringInmediate)
    }
}

DistanceCalculatorTest.defaultTestSuite.run()

//Exercise 2:
//
//Write a function that receives 2 params, first is an array of integers and the second an integer number. The function should print the count of numbers inside the array that are lower or greater than the second param.
//
//For example:
//
//Array is: [110, 20, 100, 0, 200]
//
//Int number is: 100
//
//Result:
//
//“There are 2 numbers lower and 2 greater than 100”

func greaterNumbers(array: [Int], number: Int) -> (Void) {
    var lower = 0
    var greater = 0
    for i in array{
        if (i>number) {
            greater+=1
        }
        else if (i<number) {
            lower+=1
        }
    }
    print("There are \(lower) numbers lower and \(greater) greater than \(number)")
}

greaterNumbers(array: [110, 20, 100, 0, 200], number: 100)

//Exercise 3:
//
//Rewrite the following function using guard statements. You can use 2 guard statements or 1 compound guard statement. Actually, try both. :-)
//
//func printIfPositiveInteger(number: String) {
//
//    if let value = Int(number) {
//
//        if value > 0 {
//
//            print(value)
//
//        }
//
//    }
//
//}
//
//printIfPositiveInteger(number: "abc")
//
//printIfPositiveInteger(number: "-10")
//
//printIfPositiveInteger(number: "10")

//2 guard statements
func printIfPositiveInteger(number: String) {

    guard let value = Int(number) else {
        return
    }

    guard value > 0 else {return}

    print(value)

}

printIfPositiveInteger(number: "abc")

printIfPositiveInteger(number: "-10")

printIfPositiveInteger(number: "10")
//1 compound guard statement
func printIfPositiveIntegerCompound(number: String) {

    guard let value = Int(number), value>0 else {
        return
    }
    print(value)

}

printIfPositiveIntegerCompound(number: "abc")

printIfPositiveIntegerCompound(number: "-10")

printIfPositiveIntegerCompound(number: "10")
