//Using optionals

var regularInt: Int
var optionalInt: Int?

//can set values
regularInt = 2
optionalInt = 3

//later perform some operation
regularInt = regularInt + 5
//optionalInt = optionalInt + 5
//^ This gives error

//unwrapping optionals
//check for nil

//optional binding
/* This simply checks if the optionalInt is nil or not, if true then the statement will execute */
if let unwrappedInt = optionalInt{
    print(unwrappedInt)
} else{
    // there's no value...
}

/*The way unwrapping is done the least
if optionalInt != nil {
    var unwrapppedInt = optionalInt!
    // only force unwrap if you know there is a value, hence the decsion making
    unwrapppedInt  = unwrapppedInt + 50
    print(unwrapppedInt)
}*/
