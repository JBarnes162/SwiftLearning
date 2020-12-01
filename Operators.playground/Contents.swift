var someInteger = 2
var someFloat = 2.2
var someString = "hello"

let a = 5
let b = 2

let myResult = a / b

type(of: myResult)

// Swift does not have implicit conversion!!

var score = 1
var highScore = 100.0

// highScore = score -BROKEN-
highScore = Double(score)

// Basic conversion syntax

let myFloat = Float(someInteger)
let myString = String(someFloat)
let myDouble = Double(someString)
let myInt = Int(someFloat)

// Cannot convert from bool to float for example
// Data can be lossed, for example from float to double, or float to int
// Conversions will not always work for example the string -> double above

let numberOfEdges = 4
let defaultTemperature = 72.6
let message = "The message is: "
var registeredUser = true
var firstInitial: Character = "S"

// Define a few constants and variables...
// IN SWIFT, VARIABLES AND CONSTANTS ARE NOT AUTOMATICALLY INITIALISED TO DEFAULT VALUES

let newMessage: String
let elementWeight: Double
var total: Int
var Bonus: Int

// Traveler Information (Dealing with empty fields, i.e. traveler not having a middle name)
// The question mark will allow us to declare an empty field just incase it is never filled
// '?' means optional, so middleName is of type Optional String

var firstName: String
var middleName: String?
var lastName: String

var email: String
var secondaryEmail: String?

var daysUntilNextTrip: Int?

// ...
