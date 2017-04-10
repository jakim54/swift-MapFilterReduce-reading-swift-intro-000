//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//====================================================================================
//====================================================================================

// SORT

let greatestHits = [
    "Cracklin' Rosie",
    "Forever In Blue Jeans",
    "Song Sung Blue",
    "Sweet Caroline"
]

func backwardsFunction(_ a: String, _ b: String) -> Bool {
    print("backwardsFunction is called with a: \(a) and b: \(b)\n")
    return a > b
}

let apple = "Apple"
let zebra = "Zebra"

let result = backwardsFunction(apple, zebra)

// it seems sort has been removed in Swift 3 and up. Autocomplete is there, but the debug says otherwise.
// this does not mutate the original array
let backwardHits = greatestHits.sorted(by: backwardsFunction)
print("This is the sorted backwardHits: \(backwardHits)\n")

// closure expression syntax
// another way to get the same solution as above
// a flyby way and definitely a short way to write the above, but with the parameters and what it's expecting? Watch the video again
let yoGreatestHits = greatestHits.sorted { (a: String, b: String) -> Bool in
    return a > b
}

print("This is yoGreatestHits printed out: \(yoGreatestHits)\n")


//====================================================================================
//====================================================================================

// MAP

let numbers = [1, 2, 3, 4, 5]

var squaredNumbers: [Int] = []

for n in numbers {
    let squaredNumber = n * n
    
    squaredNumbers.append(squaredNumber)
}

print("This is from a function: \(squaredNumbers)\n")

// refactored the function above with map
let squaredViaMap = numbers.map { (a: Int) -> Int in
//    print("Our nameless function is getting called with a: \(a)")
    return a * a
}

print("This is from map: \(squaredViaMap)\n")

//====================================================================================
//====================================================================================

// FILTER

let grades = [74, 92, 84, 50, 21, 50, 90, 100]

func isGreaterThan85(_ grade: Int) -> Bool {
    return grade > 85
}

let goodGrades = grades.filter(isGreaterThan85)
print("goodGrades with specified function isGreaterThan85: \(goodGrades)\n")

let goodGradesWithClosureExpression = grades.filter{ (grade: Int) -> Bool in
    return grade > 85
}

print("goodGradesWithClosureExpression as it says prints: \(goodGradesWithClosureExpression)\n")

//====================================================================================
//====================================================================================

// REDUCE

let wordsPerBook = [298000, 326000, 424000, 300000, 422000]

var total = 0

for words in wordsPerBook {
    total += words
}

print("This is total without FP(REDUCE): \(total)\n")
print("Following printed below is the refactor with reduce:\n")
let sum = wordsPerBook.reduce(0, { (runningTotal: Int, next: Int) in
    print("runningTotal is at: \(runningTotal)")
    print("next: \(next)\n")
    
    return runningTotal + next
})
print("End of refactor\n")




