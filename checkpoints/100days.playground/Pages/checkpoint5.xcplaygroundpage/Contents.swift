import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let oddNumbers = luckyNumbers.filter{$0 % 2 == 1}
//print(evenNumbers)

let orderedNumbers = oddNumbers.sorted()
//print(orderedNumbers)

let mappedNumbers = orderedNumbers.map {
    print("\($0) is a lucky number")
}
