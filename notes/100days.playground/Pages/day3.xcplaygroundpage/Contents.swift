import Cocoa
//arrays are created similarly to other languages, same syntax too
//no multiple data types in arrays as per usual
var beatles = ["john", "paul", "george", "ringo"]
beatles.append("adrian")
print(beatles[4])
//empty array initialization
//set array size by putting in parenthesis
var scores = [Int]()
scores.append(5)
scores.append(3)
print(scores[1])
//syntax to remove element from array
scores.remove(at: 0)
print(scores[0])
//syntax to search array
let bondMovies = ["casino royale", "spectre", "no time to die"]
print(bondMovies.contains("frozen"))
//sort an array
let cities = ["c", "m", "a"]
print(cities.sorted())

//dictionaries are kind of like classes in java
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]
//you might get a value back, but you might not for dictionaries
print(employee2["name"])
//solve this with default value
print(employee2["name", default: "Unknown"])
//empty dictionary initialization
//first data type describes the key, second describes the data type
//dictionaries also don't allow for duplicate keys, will overwrite instead
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaq"] = 216
heights["LBJ"] = 206
print(heights["LBJ", default: 0])

//sets are more similar to arrays as to how arrays in swift are more similar to arraylists
//sets also have extraordinary search speed, at the cost of not being sorted and not being able to have duplicates
//cannot append to sets, instead need to insert
var actors1 = Set(["RDJ", "Jackie Chan", "Don Cheadle"])
print(actors1)
//initializing an empty set
var actors2 = Set<String>()
actors2.insert("RDJ")
actors2.insert("Jackie Chan")
actors2.insert("Don Cheadle")
//print(actors2)

//enums can be used to set a range of values
