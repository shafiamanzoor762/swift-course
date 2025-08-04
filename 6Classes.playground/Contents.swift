import Foundation

//blueprinnts, Reference types and for mutability

class Person{
    var name:String
    var age:Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func increaseAge(){
        self.age += 1
    }
}

let foo = Person(name: "Foo", age: 20)
foo.age
foo.increaseAge()
foo.age

//classes are also reference types
let bar = foo
bar.increaseAge()
foo.age
foo.age += 1
foo.age
bar.age


if foo === bar{
    "Foo and bar point to the same memory"
}else{
    "They don't point to the same meory"
}

class Vehicle{
    func goVroom(){
        "Vroom vroom"
    }
}
//Inheritance
class Car: Vehicle{
    
}

let car = Car()
car.goVroom()

class Person2{
    private(set) var age: Int
    init(age: Int) {
        self.age = age
    }
    func increaseAge(){
        self.age += 1
    }
}

let baz = Person2(age: 20)
baz.age
//baz.age += 1 can't change age because of private setter
//however can use increaseAge function to increase age
baz.increaseAge()
baz.age

// convenience innitilizers is a like a deligate makes work esier
//designated initilizers internal class values are set

class Tesla{
    let manufacturer = "Tesla"
    let model: String
    let year: Int
    
    init() {
        self.model = "X"
        self.year = 2024
    }
    init(model: String, year: Int){
        self.model = model
        self.year = year
    }
    convenience init(model: String){
        self.init(model:model,year:2024)
    }
}

class TeslaModelY: Tesla{
    override init(){
        super.init(model: "Y", year: 2024)
//        inside a designated initilizer we cann't call a convinience initilizer
//        super.init(model: "Y")
        
    }
}

let modelY = TeslaModelY()
modelY.model
modelY.year
modelY.manufacturer

let fooBar = Person2(age: 20)
fooBar.age
func doSomething(with person: Person2){
    person.increaseAge()
}
doSomething(with: fooBar)
fooBar.age

//deinitilizers
class MyClass{
    init(){
        "Initilized"
    }
    func doSomething(){
        "Do Something"
    }
    deinit {
        "Deinitilized"
    }
}

let myClousure = {
    let myClass = MyClass()
    myClass.doSomething()
}
myClousure()
