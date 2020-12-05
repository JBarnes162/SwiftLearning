class Electronics {
    
    //properties
    var productModel: String
    var productBrand: String
    var productCost: Float
    var productColor: String?
    
    //initializer
    init() {
        self.productBrand = "Default Brand"
        self.productModel = "Default Model"
        self.productCost = 0.00
    }
    
    //methods
    func readDescription() {
        let description = "\(self.productModel) is of type \(self.productBrand) and costs \(self.productCost)"
        if self.productColor != nil{
            let newDescription = description + " and has a colour of \(self.productColor!)"
            print(newDescription)
        } else {
            print(description)
        }
    }

}

//Instance for iphone12
var iphone12 = Electronics()
iphone12.productModel = "iPhone 12"
iphone12.productBrand = "Apple"
iphone12.productCost = 999.99
iphone12.productColor = "Red"
iphone12.readDescription()

var macbookPro = Electronics()
macbookPro.productModel = "MacBook Pro 2020"
macbookPro.productBrand = "Apple"
macbookPro.productCost = 1299.99
macbookPro.readDescription()
