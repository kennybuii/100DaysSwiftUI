import Cocoa

enum shift: String {
    case up
    case down
}

struct CarDescription {
    private let model: String
    private let seats: Int
    private var currentGear: Int
    
    init(model: String, seats: Int, currentGear: Int) {
        self.model = model
        self.seats = seats
        self.currentGear = currentGear
    }
    
    mutating func changeGear(gear: shift) {
        
        if gear == .up {
            
            if currentGear == 10 {
                print("Max gear")
            }
            
            else {
                currentGear += 1
            }
        }
        
        else if gear == .down {
            
            if currentGear == 1 {
                print("Minimum gear")
            }
            
            else {
                currentGear -= 1
            }
        }
    }
}

var kenny = CarDescription(model: "toyota", seats: 5, currentGear: 5)
print(kenny)
kenny.changeGear(gear: .up)
print(kenny)
