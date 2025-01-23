let numbers = [1, 2, 3, 4, 5]

let doubledNumbers = numbers.map { $0 * 2 }

print(doubledNumbers) // Output: [2, 4, 6, 8, 10]

// The bug: unexpected behavior when mapping over an empty array

let emptyNumbers: [Int] = []

let doubledEmptyNumbers = emptyNumbers.map { $0 * 2 }

print(doubledEmptyNumbers) // Output: []

// The unexpected behavior is that it returns an empty array instead of crashing or throwing an error. This can be problematic if you are not expecting an empty array as a result and your code is not handling this edge case.