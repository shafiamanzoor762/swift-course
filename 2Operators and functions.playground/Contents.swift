import Foundation

let myAge = 22
let yourAge = 20

if myAge > yourAge{
    "I am older than you"
}else if myAge < yourAge{
    "I'm younger than you"
}else{
    "Oh hey, we are the same age"
}

let myMotherAge = myAge + 30
let doubleMyAge = myAge * 2

//1. unary prefix
let foo = !true
//2. unary postfix
let name = Optional("Vandad")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)
//3. binary infix
let result = 1 + 2
let names = "Foo" + " " + "Bar"

// terinnary
let age = 17
//let message : String
//if age >= 18 {
//    message = "You're an adult"
//}else{
//    message = "You're not yet an adult"
//}

let message = age > 18
 ? "You're a adult"
 : "You're not an adult"


//FUNCATIONS

func noArgumenntAnndNoReturnValue(){
    "I dont know what I'am doing"
}

noArgumenntAnndNoReturnValue()

func plusTwo(value: Int){
    let newValue = value+2
}

plusTwo(value: -30)

func newPlusTwo(value: Int) -> Int {
    value + 2
}

newPlusTwo(value: 20)

func customAdd(
    value1:Int,
    value2: Int
){
    value1 + value2
}

let customAdded: () = customAdd(value1: 20, value2: 2)

@discardableResult
func customMinus(
    _ lhs:Int, //internal names
    _ rhs:Int
) -> Int{
    lhs-rhs
}

let customSubtracted = customMinus(20,5)

//functions can also contaions their own functions
func doSomethingComplicated(
    with value: Int)
->Int{
        func mainLogic(value: Int) -> Int {
            value + 2
        }
        return mainLogic(value: value + 3)
}
doSomethingComplicated(with: 30)

//argumennts in swift can also have default value for eg.

func getFullName(
    firstName: String = "Foo",
    lastName: String = "Bar") -> String{
        "\(firstName) \(lastName)"
    }
getFullName()
getFullName(firstName: "Aliya")
getFullName(firstName: "Aliya", lastName: "Baz")
