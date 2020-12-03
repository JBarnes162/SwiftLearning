//Start of Closures

// structure for creating book instances
struct Book {
    var title: String
    var authorLastName: String
    var authorFirstName: String
    var readingAge: Int
    var pageCount: Int
}

//  several book instances

let book1 = Book.init(title: "The Hobit", authorLastName: "Tolkien", authorFirstName: "J.R.R", readingAge: 12, pageCount: 300)
let book2 = Book.init(title: "Harry Potter", authorLastName: "Rowling", authorFirstName: "J.K", readingAge: 9, pageCount: 240)
let book3 = Book.init(title: "Goodnight Moon", authorLastName: "Wise Brown", authorFirstName: "Margaret", readingAge: 1, pageCount: 300)
let book4 = Book.init(title: "The Little Prince", authorLastName: "de Saint-Exupery", authorFirstName: "Antoine", readingAge: 10, pageCount: 96)
let book5 = Book.init(title: "Where the Wild Things Are", authorLastName: "Sendak", authorFirstName: "Maurice", readingAge: 4, pageCount: 48)

// create an array of the book instances

let allBooks = [book1, book2, book3, book4, book5]

//This is still to long, time to get more concise
//let ageSortedBooks = allBooks.sorted(by: {
//    (firstBook: Book, secondBook: Book) -> Bool
//    in
//    if firstBook.readingAge <= secondBook.readingAge {
//        return true
//    } else {
//        return false
//    }
//})

let ageSortedBooks = allBooks.sorted { $0.readingAge <= $1.readingAge }

ageSortedBooks

let shortestToLongest = allBooks.sorted {$0.pageCount <= $1.pageCount}

shortestToLongest

let sortedLastName = allBooks.sorted{ $0.authorLastName.uppercased() <= $1.authorLastName.uppercased() }

sortedLastName

let sortedFirstName = allBooks.sorted{ $0.authorFirstName <= $1.authorFirstName }

sortedFirstName

let sortedTitle = allBooks.sorted { $0.title <= $1.title }

sortedTitle

let booksForUnder10s = allBooks.filter { $0.readingAge < 10 }

booksForUnder10s
