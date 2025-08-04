import Foundation

//are categarization of similar data by a name that're named such as cat, dog, rabits e.t.c

//struct Animal{
//    let type:String
//    init (type:String){
//        if(type=="Rabbit" || type=="Dog" || type == "Cat"){
//            self.type = type
//        }else{
//            preconditionFailure()
//        }
//    }
//}
//
//Animal(type: "Bike")

enum Animals{
    case cat, dog, rabbit, hedgeHog
}

let cat = Animals.cat
cat
if cat == Animals.cat{
    "This is a cat"
} else if cat == Animals.dog{
    "This is a dog"
} else if cat == Animals.rabbit{
    "This is a rabbit"
} else if cat == 3 {// calling custom operator
    "This is a rabbit"
}else{
    "This is somsething else"
}

// custom operator
func == (lhs:Animals,
         rhs:Int)->Bool{
    lhs == .cat
    return lhs == .cat && rhs == 3
}

//it's always best to compare enumerations using switch
switch cat{
    case .cat:
        "This is a cat"
        break
    case .dog:
        "This is a dog"
        break
    case .rabbit:
        "This is a rabbit"
        break
        //    case .rabbit:
        //        "This is a rabbit"
        //        break
        // if i don't wanna cover all the cases then i can use default case as well
        
        //        default:
        //            "This is something else"
        //            break
    case .hedgeHog:
        "This is a hedgeHog"
        break
}

//associated values
enum Shortcut{
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(
    path: URL(string: "https://apple.com")!
)

switch wwwApple {
    case .fileOrFolder(
        let path,
        let name
    ):
        path
        name
        break
    case .wwwUrl(let path):
        path
        break
    case .song(
        let artist,
        let songName
    ):
        artist
        songName
        break
}

//Clearer Code
switch wwwApple {
    case let.fileOrFolder(
        path,
        name
    ):
        path
        name
        break
    case let.wwwUrl(path):
        path
        break
    case let.song(
        artist,
        songName
    ):
        artist
        songName
}

if case let .wwwUrl(path) = wwwApple {
    path
}

let withoutYou = Shortcut.song(
    artist: "Symphony X",
    songName: "Without You"
)

if case let .song(_, songName) = withoutYou {
    songName
}

//enum with associate values
enum Vehicle{
    case car(manufacturer: String, model: String)
    case bike(manufacturer:String, yearMade: Int)
    //computed property on an enumeration
    var manufacturer: String{
        switch self{
            case let.car(manufacturer, _),
             let .bike(manufacturer, _):
                return manufacturer
        }
    }
}

let car = Vehicle.car(
    manufacturer: "Tesla",
    model: "X"
)

car.manufacturer

let bike = Vehicle.bike(
    manufacturer: "HD",
    yearMade: 1987
)

bike.manufacturer

//enum with rawValues
enum FamilyMember: String{
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

FamilyMember.father.rawValue
FamilyMember.mother.rawValue

//Protocal CaseIterable
enum FavoriteEmoji: String, CaseIterable{
    case blush = "😊"
    case rockets = "🚀"
    case fire = "🔥"
}
FavoriteEmoji.allCases
FavoriteEmoji.allCases.map(\.rawValue)

if let blush = FavoriteEmoji(rawValue: "😊"){
    "Found the blush Emoji"
    blush
}else{
    "This emoji dosen't exist"
}

if let snow = FavoriteEmoji(rawValue: "❄️"){
    "Snow exixts?! Really"
    snow
}else{
    "This emoji dosen't exist in our enum"
}
//let's talk about mutating members of enumerations
//just like structures you can have mutating functions inside enumerations : To do that by prefixing the functions with  mutating

enum Height{
    case short, medium, long
    mutating func makeLong(){
        self = Height.long
    }
}

var myHeight = Height.medium
myHeight.makeLong()
myHeight

// recursive and indirect enumerations -> enumeration that refers to itself

indirect enum IntOperation{
    case add(Int,Int)
    case subtract(Int, Int)
    case freeHand(IntOperation)
    
    func calculateResult(
        of operation: IntOperation? = nil
    ) -> Int {
        switch operation ?? self {
            case let .add(lhs,rhs):
                return lhs + rhs
            case let .subtract(lhs,rhs):
                return lhs - rhs
            case let .freeHand(operation):
                return calculateResult(of: operation)
        }
    }
}

let freeHand = IntOperation.freeHand(.add(2, 4))
freeHand.calculateResult()
