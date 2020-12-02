//Creating functions
//func <function name> <(what it accepts)> -> <return type> {}

func showMessage(number: Int, word: String) {
    //variables are treated as Let, so they are literal
    var newNumber = number
    newNumber += 5
    print("The function call worked. You passed in the integer \(newNumber) and your String was \(word)")
}

showMessage(number: 24, word: "Jackson")
showMessage(number: 21, word: "Angelina")

/*Returning Values*/

func basicFunction() -> String {
    let str = "This is a simple function."
    print(str)
    return str
}

let result = basicFunction()

//Can also declare that a function does not return anything, it will not return value

func anotherBasicFunction(number1: Int) -> Void {
    
}


/*Ignoring returns from functions*/

//A simple function that returns a value
func calculateValue() -> Int {
    print("Function successfully called")
    return 99
}

//call it...
//this syntax will explicitly ignore the return value
_ = calculateValue()

//how to remove a argument from a function
//can place a '_ ' to ignore something, this doe not give you the option it simply removes it.
func showNewMessage(_ message: String) {
    print("The text passed in was: \(message)")
}

//call...
//rather than showNewMessage(message: "This is redundant)
showNewMessage("This seems more efficient")


/*Changing Argument Labels*/

func difference(between firstAmount: Int, and secondAmount: Int) -> Int{
    if firstAmount > secondAmount{
        return firstAmount - secondAmount
    } else {
        return secondAmount - firstAmount
    }
}

let results = difference(between: 27391, and: 91)

print("The difference is: \(results)")

/*Naming functions correctly*/
// Rather than previewMessage(message:) use preview(message: <>), much easier to read
func preview(message: String){
    print("This String has been passed \(message)")
}

preview(message: "Great Message")
