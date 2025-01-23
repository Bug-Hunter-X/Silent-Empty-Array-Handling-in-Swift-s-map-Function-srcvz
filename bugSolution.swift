let numbers = [1, 2, 3, 4, 5]

let doubledNumbers = numbers.map { $0 * 2 }

print(doubledNumbers) // Output: [2, 4, 6, 8, 10]

// Solution: Check for empty array before mapping

let emptyNumbers: [Int] = []

let doubledEmptyNumbers = emptyNumbers.isEmpty ? [] : emptyNumbers.map { $0 * 2 }

print(doubledEmptyNumbers) // Output: []

//Alternatively, use the compactMap function to handle potential nil values
let numbersWithNils: [Int?] = [1, nil, 3, nil, 5]
let doubledNumbersWithNils = numbersWithNils.compactMap { $0 }.map{$0 * 2}
print(doubledNumbersWithNils) // Output: [2,6,10]

//This approach ensures that the map function only operates on non-nil values, providing a more robust and predictable outcome.