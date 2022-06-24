import Cocoa
//without closures
func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

//with closures
let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})
print(captainFirstTeam)

//can remove the return types going in and out of the closure, because we know they MUST be strings going in and MUST be a bool going out
let captainFirstTeam = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}
//sometimes, if we are only using the parameters once and there's not a lot, we can remove them and use special syntax to refer to them
let captainFirstTeam = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}
//finally if we just wanted to start using closures more, here ar some exmaples
//prints people with first name starting in T (filter lets us filter through an array)
let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)
//uppercases entire teamname (map lets us transform the items in an array)
let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

//accepting multiple closure parameters
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}
//how to call it
doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
