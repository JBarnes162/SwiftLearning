//Inheritance

 class Appliance { //final keyword would stop any class inheriting from this class
    //properties
    var model: String
    var manufacturer: String
    
    //Initialise
    init() {
        self.model = "default"
        self.manufacturer = "default"
    }
    
    //Methods
    final func printDetails(){
        print("Make: \(self.manufacturer), Model: \(self.model) ")
    }
}

//define a new classe and inherit from Appliance

class Toaster: Appliance {
    //new property
    var slices: Int
    
    //new initializer
    override init(){
        self.slices = 2
        super.init()
    }
    //new method
    func toast(){
        print("Toasting...")
    }
}

var myToaster = Toaster()
myToaster.manufacturer = "Next"
myToaster.model = "Nuclear"
myToaster.printDetails()
myToaster.toast()
