import UIKit

// Protocols
protocol GroceryItem {
    func descrption() -> String
    func cost() -> Float
}

// Structures
struct Apple: GroceryItem {
    let name: String
    let price: Float
    func cost() -> Float {
        return price
    }
    func descrption() -> String {
        return "\(name): \(price)"
    }
}

struct Beef: GroceryItem {
    let name: String
    let weight: Float
    let pricePerPound: Float
    func cost() -> Float {
        return weight * pricePerPound
    }
    func descrption() -> String {
        return "\(name) Price Per Pound: \(pricePerPound)"
    }
}

struct Cake: GroceryItem {
    let name: String
    let flavour: String
    let price: Float
    func cost() -> Float {
        return price
    }
    func descrption() -> String {
        return "\(name): \(price)"
    }
}

struct Customer {
    let name: String
    let groceries: [GroceryItem]
}


struct GroceryStore {
    func printReceipt(customer: Customer) {
        // implementation is going to print out receipt of grocery items for customer
        print("Printing out receipt for customer: \(customer.name)")
        var total: Float = 0
        customer.groceries.forEach { (item) in
            print(item.descrption())
            total += item.cost()
        }
        print("Total: \(total)")
    }
}

// Item Declarations
let newYorkSteak = Beef(name: "New York Steak", weight: 2.5, pricePerPound: 9.99)
let goldenApple = Apple(name: "Golden Apple", price: 4.99)
let greenApple = Apple(name: "Green Apple", price: 1.99)
let birthdayCake = Cake(name: "Birthday Cake", flavour: "Red Velvet", price: 39.99)

// Store declaration
let tesco = GroceryStore()

// Customer declaration
let angelina = Customer(name: "Angelina", groceries: [greenApple, goldenApple, newYorkSteak, birthdayCake])

// Customer Summary
tesco.printReceipt(customer: angelina)





//            if let groceryItem = item as? GroceryItem{
//                print(groceryItem.descrption())
//                total += groceryItem.cost()
//            }

/*These are two different ways of doing the more concise version on lines 56 -> 58*/

//            if let apple = item as? Apple{
//                print("\(apple.name): \(apple.price) ")
//                total += apple.price
//            } else if let beef = item as? Beef {
//                print("\(beef.name), Weight:\(beef.weight), Price Per Pound: \(beef.pricePerPound)")
//                total += beef.weight * beef.pricePerPound
//                print("\(beef.name): \(beef.weight * beef.pricePerPound)")
//            } else if let cake = item as? Cake {
//                print ("\(cake.name), Flavour: \(cake.flavour), Price: \(cake.price)")
//                total += cake.price
//            }
