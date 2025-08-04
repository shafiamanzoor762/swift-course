import Foundation

let myname="Shafia"
let yourame="Foo"


var names=[
    myname,
    yourame
]
//but with let array we can't append value
names.append("alina")
names.append("aliya")

let foo="Foo"
var foo2=foo
foo2="Foo 2"
foo
foo2

//let is value types -> structures of swift arrays or strinngs or integers it prevennts immutability of that value internally meannig that we can't change this 
let moreNames = [
"Foo",
"Bar"
]
var copy = moreNames
copy.append("Baz")
moreNames
copy

//a class in swift is nsmutable array
let oldArray = NSMutableArray(
    array:[
    "Foo",
    "Bar"
    ]
)
oldArray.add("Baz")
var newArray = oldArray
newArray.add("Qux")
oldArray
newArray

let someNames = NSMutableArray(
    array:[
    "Foo",
    "Bar"
    ]
)
//NSMutableArray is mutable variance of NSArray
//anywhere our functionn expect NSArray we can pass NSMutableArray
func changeTheArray(_ array: NSArray){
    let array2 = array as! NSMutableArray
    array2.add("Baz")
}

changeTheArray(someNames)
someNames
