import Cocoa
/*
private: don't let anything outside the struct use this
fileprivate: don't let anything outside the current file use this
public: let anyone anywhere use this
*/

//static means both studentCount property and add() belong to the School struct itself, rather than individual instances of the strut
struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

//thus we don't have to create an instance of School, these are static and don't exist uniquely on instances of struct
School.add(student: "Taylor Swift")
print(School.studentCount)

//.self refers to the current value of the struct
