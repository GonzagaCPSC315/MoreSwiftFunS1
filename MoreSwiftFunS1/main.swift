//
//  main.swift
//  MoreSwiftFunS1
//
//  Created by Gina Sprint on 10/2/20.
//  Copyright © 2020 Gina Sprint. All rights reserved.
//

import Foundation

print("Hello, World!")

// warm up task
//func getPositiveInteger() -> Int {
//    print("Enter a positive integer:")
//    if let inputString = readLine() {
//        if let inputInt = Int(inputString) {
//            if inputInt > 0 {
//                return inputInt
//            }
//        }
//    }
//    return -1
//}
//
//let value = getPositiveInteger()
//print("got:", value)

// MARK: - Guard
// use guard when you want an early exit from a function
// when a condition fails
// useful to prevent heavy if nesting
// when used with optional binding, the declared let variables
// are in scope outside the guard
//func getPositiveInteger() -> Int {
//    print("Enter a positive integer:")
//    guard let inputString = readLine(), let inputInt = Int(inputString), inputInt > 0 else {
//        // here when one of the BCs fails/false
//        return -1 // early exit because something went wrong
//    }
//    // here then all of our BCs succeeded/true
//    // inputString and inputInt are still in scope here
//    return inputInt
//}
//
//let value = getPositiveInteger()
//print("got:", value)

// MARK: - Error Handling
// when a programmer anticipates that something might go wrong...
// they "throw" an error and require the
// calling code acknowledge/handle the error

//// define our Error enum
//enum UserInputError: Error {
//    case invalidInteger
//    case invalidPositiveInteger
//}
//
//// put throws after the ()
//func getPositiveInteger() throws -> Int {
//    print("Enter a positive integer:")
//    guard let inputString = readLine(), let inputInt = Int(inputString), inputInt > 0 else {
//        // here when one of the BCs fails/false
//        throw UserInputError.invalidPositiveInteger // early exit because something went wrong
//    }
//    // here then all of our BCs succeeded/true
//    // inputString and inputInt are still in scope here
//    return inputInt
//}
//
//// 2 ways to handle the error
//// 1. try? optional
////let value = try? getPositiveInteger()
////print("got:", value)
//// 2. try with do {} catch {}
//do {
//    let value = try getPositiveInteger()
//    print("got:", value)
//}
//catch UserInputError.invalidPositiveInteger {
//    print("Unable to get a positive integer from the user")
//    // try to recover...
//}
//
//// MARK: - Optional Chaining
//// use optional chaining when you want to use a member (property or a method) on a value in an optional
//print("Enter in an integer: ")
//// example: we want to print out how many digits are the integeer
//let inputStringOptional = readLine()
//let numDigits = inputStringOptional?.count
//print(numDigits)
//
//// MARK: - Nil Coalescing Operator ??
//// use ?? when you have a default value to use instead of nil when you unwrap an optional
//// example: lets grab the integer in inputStringOptional or 0 if there is no parseable integer
//if let inputString = inputStringOptional {
//    let inputInt = Int(inputString) ?? 0
//    print(inputInt)
//}

// MARK: - Closure Practice
// review ADS 5.1...
// guided examples of map, filter, reduce on an Int array
// then... I have challenge problems on a String array
let nums = [1, 2, 3, 4, 5]
print(nums)
// map: apply a function to each value in an array to produce
// an new array of equal size
// example: write a closure to create an array of each value in nums doubled [2, 4, 6, 8, 10]
// without syntactic sugar (shorthand)
let numsDoubled = nums.map({(value) -> Int in
    return value * 2
})
print(numsDoubled)
// syntactic sugar
print(nums.map{$0 * 2})

// filter: apply an inclusion critera to each value in an array to
// produce a new array (might be smaller)
// example: write a closure to create an array of only the even numbers
let numsEven = nums.filter({(value) -> Bool in
    if value % 2 == 0 {
        return true
    }
    return false
})
print(numsEven)
// syntactic sugar
print(nums.filter{$0 % 2 == 0})

// reduce: combine all the values in an array into a single value
// example: write a closure to compute the product of all the values in nums
let product = nums.reduce(1, { (productSoFar, value) -> Int in
    return productSoFar * value
})
print(product)
// TODO: syntactic sugar
