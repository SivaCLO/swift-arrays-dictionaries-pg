
import UIKit

/* #Arrays

Arrays store ordered lists of multiple values of the same type. Swift’s use of explicitly typed collections ensures that code is always clear about the types of values it can work with. They differ from  Objective-C's NSArray and NSMutableArray classes, which can store any kind of object and do not provide any information about the nature of the objects they return.
*/


/*

Two ways of using Arrays : (Second one is preferred)

*/

var array1: Array<Int> = []
var array2: Int[] = []

/*

#Array Literal is a shorthand way to write one or more values as an array collection. Note that the type of the array is not specified, since Swift's type inference can find it from the array literal used to initialize it.
*/

[1,2,3]

var nameList = ["Foo", "Bar"]

/* #Accessing and Modifying Arrays */

nameList.count // read-only property

if nameList.isEmpty {
    "The name list is empty"
} else {
    "The name list is not empty"
}

nameList.append("Another Foo")
nameList += "Superman"
nameList += ["Batman", "Spiderman"]

nameList[0] // Arrays start at index 0
nameList[0] = "Hulk"

nameList[0..3] = ["Ironman"] // Works even if the replacement set of values has a different length than the range.
nameList


nameList.insert("Hulk", atIndex:0)
nameList

nameList.removeAtIndex(0)
nameList.removeLast()
nameList

/* #Iterating over an Array */

for name in nameList {
    name
}

for (index, value) in enumerate(nameList) {
    println("Name \(index + 1): \(value)")
}
// Name 1: Ironman
// Name 2: Superman
// Name 3: Batman

/* #Creating and Initializing an Array */

var someInts = Int[]()
someInts.append(3)
someInts
someInts = [] // Type is infered from the previous initialization.

var threeDoubles = Int[](count: 3, repeatedValue: 0) // Initialize with the given length and fill it with repeated values.
var anotherThreeDoubles = Array(count: 5, repeatedValue: 1) // This works too, because of type inference from the default value

var sixDoubles = threeDoubles + anotherThreeDoubles // The new array's type is inferred from the result of the addition operator


/* #Dictionaries
A dictionary is a container that stores multiple values of the same type. Each value is associated with a unique key, which acts as an identifier for that value within the dictionary. Unlike items in an array, items in a dictionary do not have a specified order.
*/

var airports: Dictionary<String, String> = ["TYO": "Tokyo", "DUB": "Dublin"] // Dictionary literals are a list of key-value pairs
var airportsAgain = ["TYO": "Tokyo", "DUB": "Dublin"] // with type inference

/* Accessing and Modifying Dictionaries */

airports.count

airports["LHR"] = "London" // Adding a new value
airports["LHR"] = "London Heathrow" // Editing an existing value
airports.count

/* updateValue method works in the same way as above. But it additionally returns the old value as an optional value. This can be used to verify if the update went through */

airports.updateValue("Dublin International", forKey: "DUB") // Works both for new keys as well as existing keys

if let oldValue = airports.updateValue("Tokyo International", forKey: "TYO") {
    "The old value for TYO was \(oldValue)."
}

/* Reading a value from a dictionary always returns an optional value of the dictionary's value type.*/

if let airportName = airports["DUB"] {
    "The name of the airport is \(airportName)."
} else {
    "That airport is not in the airports dictionary."
}

/* Assigning nil to a key will remove the key-value pair from the dictionary */

airports["APL"] = "Apple International"
airports.count
airports["APL"] = nil
airports.count

/* removeValueForKey method behaves the same way as above. Additionally it returns the removed value.*/

if let removedValue = airports.removeValueForKey("DUB") {
    "The removed airport's name is \(removedValue)."
} else {
    "The airports dictionary does not contain a value for DUB."
}

airports.count

/* # Iterating over a dictionary
Use for-in loop to iterate over a dictionary. Each item in the dictionary is returned as a (key, value) tuple. */

for (airportCode, airportName) in airports {
    println("\(airportCode): \(airportName)")
}
// TYO: Tokyo
// LHR: London Heathrow

/* When you need only keys */

for airportCode in airports.keys {
    println("Airport code: \(airportCode)")
}
// Airport code: TYO
// Airport code: LHR

/* When you need only values */

for airportName in airports.values {
    println("Airport name: \(airportName)")
}
// Airport name: Tokyo
// Airport name: London Heathrow

let airportCodes = Array(airports.keys)
let airportNames = Array(airports.values)

/* Creating an empty dictionary */

var namesOfIntegers = Dictionary<Int, String>()
namesOfIntegers[15] = "fifteen"
namesOfIntegers = [:] // If the type is inferrable from previous initialization

// Mutability

let constArray = [1, 2, 3]
//constArray += 4 // This will not work. You can't modify the size.
constArray[2] = 4 // This will work. Values can be modified of a const array
constArray

let constDict = [1: "one", 2: "two"]
// constDict[3] = "three" // This will not work. You can't add/remove new pairs
// constDict[2] = "Two" // This will not work. You cannot modify the values too.

