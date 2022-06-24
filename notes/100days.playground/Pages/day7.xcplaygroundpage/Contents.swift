import Cocoa
//functions work the same, argument syntax below
func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

//printTimesTables(number: 5, end: 20)

//syntax for returning functions
func pythagoras(a: Double, b: Double) -> Double {
    return sqrt(a*a + b*b)
}
let c = pythagoras(a: 3, b: 4)
print(c)
//tuples
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}
let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")
