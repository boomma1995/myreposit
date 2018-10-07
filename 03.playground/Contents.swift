//Task_1  "Hello, world!"
import Foundation
print("Hello, World!")

//Task_2 Work with types

//1.
let twelveDecimal = 12

//2.
let minus100: Int8 = -100

//3.
let mynumberDecimal = 128
let mynumberHex = 0x80

//4.
let minValue = Int64.min // minValue is -9223372036854775808, type is Int64

//5.
let maxValue = Int64.max // minValue is 9223372036854775808, type is Int64

//6.
let tenthoustwohundredthirtyfivePoint34: Float = 10235.34

//7.
let chA: Character = "a"
let chAnotherA = Character ("a")

//8.
let strA = "Hello,World"

//9.
let skyIsBlue=true

//10.
(Int, String).self
(12,"twelve")
(number: 12, string:"twelve")

//Task_3 Work with Strings

var welcomeMessage: String
welcomeMessage = "Hello World. This is Swift programming language"

//1
print("welcomeMessage содержит \(welcomeMessage.count)символов")
// welcomeMessage содержит 47символов

//2
let chU: Character = "u"
var myMessage = "Hello, World. Th\(chU)s \(chU)s Sw\(chU)ft programm\(chU)ng language"
// Замена символа "i" на "u" **"Hello, World. Thus us Swuft programmung language"


//3
myMessage.remove(at: myMessage.index(myMessage.startIndex, offsetBy:4))
print(myMessage) //without "o"
// deleted "o"

myMessage.remove(at: myMessage.index(myMessage.startIndex, offsetBy:7))
print(myMessage) //without "o"
// deleted "o"

myMessage.remove(at: myMessage.index(myMessage.startIndex, offsetBy:10))
print(myMessage) //without "."
// deleted "." **"Hell, Wrld Thus us Swuft programmung language"

//4
var string2 = "( modified)"
var withAddition = myMessage + string2 //"Hell, Wrld Thus us Swuft programmung language( modified)"
// current stroke with addition "( modified)"

//5
if withAddition.isEmpty {print ("Empty string")}
// string doesn't empty

//6
let coolPoint: Character = "."
withAddition.append(coolPoint)
// current stroke with "."

//7

var endOfSentence = withAddition.index(of: ",")!
var firstSentence = withAddition[...endOfSentence] //firstSentence is == "Hell"
// string doesn't begin with word "Hello"

//8
if withAddition.hasSuffix("world") { //error
    print ("Suffix exists")
}
// string doesn't end with word "world"

//9
let justindex = withAddition.index(withAddition.startIndex, offsetBy: 10)
withAddition [justindex] // ""

withAddition.insert (contentsOf: "-", at:withAddition.index(withAddition.startIndex,offsetBy: 11))
//"Hell, Wrld -Thus us Swuft programmung language( modified)."

//10
var modified = withAddition.replacingOccurrences(of: "Thus us", with: "This is")
print (modified)
// Prints "Hell, Wrld -This is Swuft programmung language( modified).\n"

//11
let tenindex = modified.index(modified.startIndex, offsetBy: 10)
modified [tenindex] //

let fifteenindex = modified.index(modified.startIndex, offsetBy: 15)
modified [fifteenindex]

//12

let start = modified.index(modified.startIndex, offsetBy: 10)
let end = modified.index(modified.endIndex, offsetBy: -40)
let range = start..<end
let mySubstring = modified[range] //-This i

let mynewString = String (mySubstring)

//Task_4 Work with Optionals

//1
var integerNumber: Int? //nil

//2
var decimalNumber: Float? //nil

//3
integerNumber = 1

//4
var a: Int = 0
if integerNumber != nil {
    a=integerNumber!+1          //a=2
}

//5
var b = -a // minusNumber = -2

//6

decimalNumber = Float(b) //decimalNumber = -2

//7
let pairOfValues : (Int, Float) = (-2,-2)

//8
pairOfValues.0 // Int = -2

//9
pairOfValues.1 // Float = -2

//10
var d: Float
if let somethingHere = decimalNumber {  //-2
    d=somethingHere
}


