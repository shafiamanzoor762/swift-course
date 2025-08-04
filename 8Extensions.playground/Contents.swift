import Foundation

// extension can add functionality to existing types they can extend existing types, also we can add initializers to existing types
extension Int {
    func plusTwo()->Int{
        self + 2
    }
}
let two = 2
two.plusTwo()

struct Person {
    let firstName:String
    let lastName: String
}

extension Person {
    init(fullName: String) {
        let components = fullName.components(separatedBy: " ")
        self.init(
            firstName: components.first ?? fullName,
            lastName: components.last ?? fullName
        )
    }
}

let person = Person(fullName: "Foo Bar")
person.firstName
person.lastName

protocol GoesVroom {
    var vroomValue: String { get }
    func goVroom()-> String
}

extension GoesVroom {
    func goVroom()-> String {
        "\(self.vroomValue) goes vroom!"
    }
}

struct Car {
    let manufacturer: String
    let model: String
}

let modelX = Car(manufacturer: "Tesla", model: "X")

extension Car: GoesVroom {
    var vroomValue: String {
        "\(self.manufacturer) model \(self.model)"
    }
}

modelX.goVroom()

//convenience initializer
class MyDouble {
    var value: Double
    //designated initializer
    init(value: Double){
        self.value = value
    }
}

// this is deligating its task to a designated initializer
extension MyDouble {
    convenience init(){
        self.init(value: 0)
    }
}

MyDouble().value
