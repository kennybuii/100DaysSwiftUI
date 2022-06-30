import Cocoa

enum inputError: Error {
    case boundsError
    
    case noRoot
}

func squareRoot(number x: Int) throws -> Int {
    if x < 1 || x > 10_000 {
        throw inputError.boundsError
    }

    for i in 1...100 {
        if i*i == x {
            return i
        }
        
    }
    //if still here, then didn't return
    throw inputError.noRoot
}

do {
    let result = try squareRoot(number: 10000)
    print(result)
} catch inputError.boundsError {
    print("Out of bounds")
} catch inputError.noRoot {
    print("No Root")
}
