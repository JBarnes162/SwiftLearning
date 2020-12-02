/* Swift Collections
Array - Standard ordered collection of items with base index 0
Dictionary - A collection of key/value pairs i.e. "UPS" would be "United Parcel Service
Set - an unordered collection of items
*/

//make a variable array of Strings
var fruitNames = ["Banana", "Apple", "Strawberry",
                  "Mango", "Kiwi", "Pineapple",] // trailing commas are ok

//make a constant array of Ints
let years = [1996, 1997, 1998,
             1999, 2000, 2001]

// what's at index 0?

let initialName = fruitNames[0]

//change the string at index 5
fruitNames[5] = "DragonFruit"

//add a new element
fruitNames.append("Tomato")


//add it again
fruitNames.append("Tomato")

//remove an element

fruitNames.remove(at: 1)

//or

fruitNames.removeFirst()

//or

let theRemovedElement = fruitNames.removeLast()

//Type annotation for array of Strings
var myStringArray: [String] = []
//type annotation for array of Ints
var myIntArray: [Int]
myIntArray = []

//add an element
myIntArray.append(2)

print(myIntArray[0])
