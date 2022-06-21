import Cocoa
//assign boolean by using let
var goodBoy = true
// has ! operator and .toggle(), which switches truth statement
goodBoy = !goodBoy
print(goodBoy)
goodBoy.toggle()
print(goodBoy)

//Joining strings together with + (intuitive)
let people = "haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

//Joining strings with string interpolation (better)
let name = "kenny"
let age = 22
let message = "hi, my name is \(name) and im \(22)"
print(message)
//can calculat using string interpolation as well
print("9+10 is \(9+10)")
