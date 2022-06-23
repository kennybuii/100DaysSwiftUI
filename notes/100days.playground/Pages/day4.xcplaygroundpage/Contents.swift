import Cocoa
//if assigning a value, then type inference is done, otherwise to force a certain type, use type annotation
let playerName: String
playerName = "ken"
print(playerName)
//type annotation for arrays
var albums = [String]()
albums = ["IFRTI2L", "CLB"]
print(albums[0])
//type annotation for dictionary
var user = [String: String]()
user = ["id": "kbui"]
print(user["id", default: "empty"])
