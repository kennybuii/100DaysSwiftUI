import Cocoa
//variables are created with var =
var varTest = 1_000
//constants are created with let =
let constTest = 1_001

// multi-line strings require """
//stuff u want to multi-line
//""" where the """ are all on solo lines
var string = """
i'm testing out "strings"
"""

//functions like .count, .uppercased(), .hasPrefix("requirement"), and .hasSuffix("requirement")
print(string.count)

//type safety for ints and doubles, need to cast
var x = 1
var y = 1.1
var z = x + Int(y)
print(z)
