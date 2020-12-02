//Only three ways to loop in swift
//While: while condition is met, loop. no parenthesis are required. Must be true or false
//Repeat while: repeat {} while <condition>
//ForIn: for <item> in <variable> -> item is whatever you want it to be, variable is an array in the example below

var bunchOfWords = ["Sparkle", "Bang", "Loop", "Swift"]

for word in bunchOfWords {
    print(word)
}

for number in 0...10 {
    print(number)
}

for number in 0..<10 {
    print(number)
}

for number in stride(from: 0, through: 256, by: 16){
    print(number)
}   //can go up in steps of 16

for number in stride(from: 0, to: 256, by: 8) {
    print(number)
}   //can go to 256 in steps of 8 but will not hit 256

//this is how to go from large to small
for number in stride(from: 256, to:0, by:-1){
    print(number)
}

