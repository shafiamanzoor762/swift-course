import Foundation

//it's not a class it contains functions dont have a body(decleration)
protocol CanBreathe {
    func brethe()
}

struct Animal:CanBreathe{
    func brethe() {
        "Animal Breathing..."
    }
}

struct Person:CanBreathe{
    func brethe() {
        "Person Breathing..."
    }
}

let dog = Animal()
dog.brethe()
let foo = Person()
foo.brethe()

protocol CanJump{
    func jump()
}

extension CanJump{
    func jump(){
        "Jumping..."
    }
}

struct Cat:CanJump{

}

let whiskers = Cat()
whiskers.jump()

protocol HasName{
    var name: String { get }
    var age:Int { get set }
    mutating func increaseAge()
}

struct Dog: HasName{
    let name: String
    var age: Int
}

extension HasName{
    func describeMe()->String{
        "Your name is \(name) and you are \(age) years old"
    }
    mutating func increaseAge(){
        self.age += 1
    }
}

var woof = Dog(
    name: "woof",
    age: 10
)

woof.name
woof.age
woof.age += 1
woof.age
woof.describeMe()
woof.increaseAge()
woof.age

protocol Vehicle{
    var speed: Int { get set }
    mutating func increaseSpeed(by value: Int)
}

extension Vehicle{
    mutating func increaseSpeed(
        by value: Int
    ){
        self.speed += value
    }
}
struct Bike: Vehicle{
    var speed: Int
    init(){
        self.speed = 0
    }
}

var bike = Bike()
bike.speed
bike.increaseSpeed(by: 10)
bike.speed

struct Worm{
    
}
//Can use is to check wether conforming a protocoal or not

func describe(obj:Any){
    if obj is Vehicle{
        "obj conforms to Vehicle protocoal"
    }
    else {
        "obj does NOT conforms to the Vehicle protocoal"
    }
}
describe(obj: bike)
let worm = Worm()
describe(obj: worm)

func increaseSpeedVehicle(
    obj: Any
){
    if var vehicle = obj as? Vehicle{
        vehicle.speed
        vehicle.increaseSpeed(by:10)
        vehicle.speed
    }else{
        "This was not a Vehicle"
    }
}

increaseSpeedVehicle(obj: bike)
bike.speed
