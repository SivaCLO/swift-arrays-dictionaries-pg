
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















