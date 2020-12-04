// Adding functionality with extensions

extension String {
    func removeSpaces() -> String{
        let filteredCharacters = self.filter{ $0 != " " }
        return String(filteredCharacters)
    }
}

var babiesNumber = 0
babiesNumber += 20+30+50+50+50+50+50+50+50+100
print(babiesNumber)
var babiesNewNumber = 0
babiesNewNumber += (50*4) + (100*4) + (150*4) + (200*3) + (250*3) + 1000
print(babiesNewNumber)

//string
let album = "Decks and drums and rock and roll"
let scriptio = "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet"
let phrase = "Love is new here"

print(album.removeSpaces())
print(scriptio.removeSpaces())
print(phrase.removeSpaces())

album.uppercased()
