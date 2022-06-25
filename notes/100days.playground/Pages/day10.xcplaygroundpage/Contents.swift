import Cocoa

//structs syntax
//since this struct lets us change an employee's data, we must use the mutating keyword
//struct Employee {
//    let name: String
//    var vacationRemaining: Int
//
//    mutating func takeVacation(days: Int) {
//        if vacationRemaining > days {
//            vacationRemaining -= days
//            print("I'm going on vacation!")
//            print("Days remaining: \(vacationRemaining)")
//        } else {
//            print("Oops! There aren't enough days remaining.")
//        }
//    }
//}
//
////since employee archer is a variable, it's allowed to change and everything's happy go lucky, but if we set it to let, then it would be constant and calling the function wouldn't work
//var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
//archer.takeVacation(days: 5)
//print(archer.vacationRemaining)

//computer variables are used so we don;t lose data, in the above example, we are losing how many days of vacation originally granted to the employee
struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
         vacationAllocated - vacationTaken
     }
    
}
var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
print(archer.vacationRemaining)
archer.vacationTaken += 4
print(archer.vacationRemaining)

//property observers, didSet for whenever score changes, we will do something - print some code
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

//willSet tells u old val and new val, probably more useful for debugging than anything
struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

//initializers, pretty straight forward
struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player.number)
