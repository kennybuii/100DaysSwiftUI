import Cocoa

for i in 1...100 {
    if i.isMultiple(of: 15){
        print("fizzbuzz")
    }
    else if i.isMultiple(of: 3){
        print("fizz")
    }
    else if i.isMultiple(of: 5) {
        print("buzz")
    }
    else {
        print(i)
    }
}
