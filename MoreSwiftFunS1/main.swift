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

// define our Error enum
enum UserInputError: Error {
    case invalidInteger
    case invalidPositiveInteger
}

// put throws after the ()
func getPositiveInteger() throws -> Int {
    print("Enter a positive integer:")
    guard let inputString = readLine(), let inputInt = Int(inputString), inputInt > 0 else {
        // here when one of the BCs fails/false
        throw UserInputError.invalidPositiveInteger // early exit because something went wrong
    }
    // here then all of our BCs succeeded/true
    // inputString and inputInt are still in scope here
    return inputInt
}

// 2 ways to handle the error
// 1. try? optional
//let value = try? getPositiveInteger()
//print("got:", value)
// 2. try with do {} catch {}
do {
    let value = try getPositiveInteger()
    print("got:", value)
}
catch UserInputError.invalidPositiveInteger {
    print("Unable to get a positive integer from the user")
    // try to recover...
}
