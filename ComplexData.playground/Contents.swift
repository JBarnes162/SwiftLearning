var itemName: String // e.g name of media
var releaseDate: Int // Year of release

//Enumerations

enum MediaType {
    case book
    case movie
    case music
    case game
    case documentary
    //or can do case book, movie, music, game, documentary
}

var itemType: MediaType

itemType = MediaType.book

//later or

itemType = .game

switch itemType{        //This case is exhaustive as all possible outcomes of enum is exhausted
case .movie:
    print("Movie")
case .game:
    print("Game")
case .book:
    print("Book")
case .documentary:
    print("Documentary")
case .music:
    print("Music")
}

//We can go deeper with enums by assigning raw calues to each case within the enum...

enum BottleSize: String {   //String, Int, Double...
    case half = "37.5 cl"
    case standard = "75 cl"
    case magnum = "1.5 litres"
    case jeroboam = "3 litres"
    case rehoboam = "4.5 litres"
    case methuselah = "6 litres"
    case balthazar = "12 litres"
}

var myBottle: BottleSize = .jeroboam

print("Your \(myBottle) is \(myBottle.rawValue)")

//We can even have customisable data types for each case within the enum these are called Associated Values

enum DataType {
    case movie(String)  //this allows us to also store something else, i.e genre of movie
    case music(Int)
    case book(String)
}

var firstItem: DataType = .movie("Comedy")
var secondItem: DataType = .music(120)

switch firstItem{
case .movie(let genre):
    print("It's a \(genre) movie")
case .music(let bpm):
    print("It's at \(bpm) beats per minute")
case .book(let author):
    print("It's written by \(author)")
}

/*Structures*/

struct Movie {  // vars/let within strucs are known as properties of that struct
    var director: String
    var title: String
    var releaseYear: Int
    var genre: String
    
    //methods
    func summary() -> String{
        return "\(title) is a \(genre) film released in \(releaseYear) and directed by \(director)"
    }
}

var first = Movie(director: "Speielberg", title: "Castaway", releaseYear: 1998, genre: "Drama")

print ("Your first movie is \(first.title)")

first.releaseYear = 1999

print(first.summary())

/*Dictionaries*/

var airlines = ["SWA": "Southwest Airlines",
                "BAW": "British Airways",
                "BHA": "Buddha Air",
                "CPA": "Cathay Pacific"]

if let results = airlines["SWA"]{
    print(results)
}else{
    print("No Results")
}

//add or change

airlines["DVA"] = "Discovery Airlines" // this will check to see if DVA is a key, if true it will edit the value if false it will add the value
airlines

airlines["BHA"] = nil
airlines

for entry in airlines {
    print(entry)
}

for (key,value) in airlines {   //this allows us to print either the key or the value, the syntax here would be <key> , <value> can be named whatever
    print(key)
    print(value)
}
//Dictionalry of strings and string values
var periodicElements: [String: String]

//Dictionary of Int keys and String values
var employees: [Int: String]


/*Tuple example*/

let cameraType = "Canon"
let photoMode = true
var shutterSpeed = 60
var iso = 640
var aperture = "f1.4"

var basicTuple = (aperture, iso, cameraType) //this creates a variable that groups 3 other values for example

//can mix literals, constants, variables
var nextTuple = ("String literal!", photoMode, 23124, cameraType)

//this is useful because it allows us to have our functions return multiple data types i.e

func randomAlbum() -> (albumTitle: String, length: Int){
    let title = "Once more round the sun"
    let duration = 70
    
    return (title, duration)
}

let (nextTitle, length) = randomAlbum()
print("Playing next: \(nextTitle)")
print("With length: \(length)")

/*let result = randomAlbum()
print(result.albumTitle)
print(result.length)*/

//Very useful for looping around dictionaries

for (thisIsKey, thisIsValue) in airlines{
    print("The key is \(thisIsKey) and this is the airline \(thisIsValue)")
}
