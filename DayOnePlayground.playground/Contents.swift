
let playerName = "Jackson"
var age = 24
var temperature = 19.4
var activeMembership = true

//as you declare vars, they are determined by the compiler what data type they are and Swift is type safe
//is required, it's the only way to declare variables

age = age + 5

//repl is very important for debugging, i can take chunks of code or even lines from big
//application and automatically analyse within the terminal

var editsPermitted = true

//If you do not have a value for the variable then you can delcare variables as per below:

var bonusScore: Int
var environmentName: String
var levelCompleted: Bool
var progressPercentage: Double

//Additional variable types, UInt - unsigned, Character - Single Char etc

//you should declare variables with Let if you know that it will never need to change!!! important
func simpleFunction(){
    let message = "This should be a variable?"
    
    print(message)
}

//Constants do not require values at compile time -
//they can be calculated at runtime

let currentMonth: String
let todaysTemperature: Float
let maximumPixelWidth: Int
let minimumPixelWidth: Int

//... but they MUST be initialized before being used
currentMonth = "December"

print(currentMonth)
