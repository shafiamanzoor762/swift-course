#  Swift Basics (case-sensitive language)

## Variables: 
Store values that can change during the program.
		`var myValue = 34`

## Constant: 
Store values that never change after being set.
		`let myValue = 34`

## DataTypes
   │
1. ├─ Int: Whole numbers (no decimals). `let age: Int = 25`
2. ├─ Float: Small decimal numbers (less precision). `let price: Float = 19.99`
3. ├─ Double: Decimal numbers with more precision. `let pi: Double = 3.14159`
4. ├─ String: Text values. `let name: String = "Swift"`
5. ├─ Bool: True or false values. `let isLoggedIn: Bool = true`
6. ├─ Swift boolean
7. ├─ Optional: Can hold a value or nil (no value). `var email: String? = nil`
8. (Collections)
    1. ├─ Array: Ordered list of values. `let numbers: [Int] = [1, 2, 3]`
    2. ├─ Tuple: Group of different values in one. `let person = ("John", 25)`
    3. ├─ Dictionary: Key-value pairs. `let user = ["name": "Alice", "age": "30"]`
    4. └─ Set: Unordered unique values. `let colors: Set = ["red", "blue", "green"]`

—————————————————————————————————————————

## Control Flow
 
1. if-else Statement: Used to run code based on conditions.

`let score = 85
if score >= 90 {
    print("A grade")
} else if score >= 80 {
    print("B grade")
} else {
    print("Needs improvement")
}`

2. switch Statement: Used to check a value against multiple cases.

`let day = "Monday"
switch day {
case "Monday":
    print("Start of the week")
case "Friday":
    print("Almost weekend")
default:
    print("Just another day")
}`

3. while loop: Repeats code while a condition is true.

`var count = 1

while count <= 3 {
    print("Count is \(count)")
    count += 1
}`

4. for-in loop: Used to iterate over items in a collection.

`let fruits = ["Apple", "Banana", "Cherry"]
for fruit in fruits {
    print(fruit)
}`

5. repeat-while loop: Executes code at least once, then checks the condition.

`var number = 1
repeat {
    print("Number is \(number)")
    number += 1
} while number <= 3`

Keywords:
guard Statement: Used for early exit if a condition isn't met.

`func greet(person: String?) {
    guard let name = person else {
        print("No name provided")
        return
    }
    print("Hello, \(name)!")
}
break: Stops the loop or switch early.
for num in 1...5 {
    if num == 3 {
        break
    }
    print(num)
}
continue: Skips the current loop iteration.
for num in 1...5 {
    if num == 3 {
        continue
    }
    print(num)
}
return: Exits a function and optionally returns a value.
func square(of number: Int) -> Int {
    return number * number
}`

## Control Flow:

| Keyword       | Definition                                             |
| ------------- | ------------------------------------------------------ |
| `if`          | Starts a conditional statement.                        |
| `else`        | Executes code if the `if` condition is false.          |
| `else if`     | Adds another condition to check if previous ones fail. |
| `switch`      | Matches a value to different possible cases.           |
| `case`        | A branch of a `switch` statement.                      |
| `default`     | Fallback case in a `switch`.                           |
| `for`         | Loop over a range or collection.                       |
| `in`          | Used with `for` loops to iterate items.                |
| `while`       | Repeats code while a condition is true.                |
| `repeat`      | Starts a loop that runs at least once.                 |
| `continue`    | Skips the current loop iteration.                      |
| `break`       | Exits a loop or switch early.                          |
| `return`      | Exits a function, optionally returning a value.        |
| `fallthrough` | Continues to the next `case` in a `switch`.            |

---

## Declarations & Types:

| Keyword          | Definition                                    |
| ---------------- | --------------------------------------------- |
| `var`            | Declares a changeable variable.               |
| `let`            | Declares a constant (can’t change).           |
| `func`           | Declares a function.                          |
| `class`          | Declares a class.                             |
| `struct`         | Declares a structure.                         |
| `enum`           | Declares an enumeration.                      |
| `typealias`      | Gives a new name to an existing type.         |
| `protocol`       | Defines a blueprint of methods/properties.    |
| `init`           | Constructor for classes/structs/enums.        |
| `deinit`         | Cleanup before a class instance is destroyed. |
| `extension`      | Adds features to existing types.              |
| `subscript`      | Defines custom access to collections.         |
| `associatedtype` | Defines a placeholder type in protocols.      |
| `self`           | Refers to the current instance.               |
| `super`          | Refers to the parent class.                   |
| `static`         | Defines a type-level property or method.      |
| `lazy`           | Delays initialization until first use.        |

---

## Access Control:

| Keyword       | Definition                                      |
| ------------- | ----------------------------------------------- |
| `public`      | Accessible everywhere.                          |
| `internal`    | Accessible within the module (default).         |
| `private`     | Accessible within the enclosing scope.          |
| `fileprivate` | Accessible within the current file.             |
| `open`        | Like `public`, but subclassable outside module. |


## Memory Management:

| Keyword   | Definition
| --------- 	 | ------------------------------------------------- 
| `weak`   	 | Declares a weak reference to avoid retain cycles. 
| `unowned` | Declares a non-owning reference. 
| `is`    		 | Type checking operator. 
| `as`     	 | Type casting operator.
| `try`    	 | Used for calling throwing functions.
| `catch`  	 | Catches and handles thrown errors.
| `throw`  	 | Throws an error.
| `throws`	 | Marks a function that can throw errors.
| `do`     	 | Starts a block that can handle errors.
| `guard`  	 | Exits early if a condition isn't met.
| `defer` 	 | Runs code right before scope exits.


## Miscellaneous:

| Keyword     | Definition
| ----------- | --------------------------------------
| `true`      	| Boolean true value.
| `false`   	| Boolean false value.
| `nil`       	| Represents absence of a value.
| `import`    | Brings external modules into scope.
| `as?`       	| Optional casting.
| `as!`       	| Forced casting.                        |
| `Any`       	| Represents any type.                   |
| `AnyObject` | Represents any class type.             |
| `final`    	 | Prevents subclassing or overriding.    |
| `override`  | Replaces a superclass method.          |
| `open`      	| Allows subclassing outside the module. |
| `where`     | Adds a condition in a declaration.     |

