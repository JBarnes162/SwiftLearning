va// Definining and Instantiating classes

class Appliance {
    //properties
    var manufacturer: String = ""
    var model: String = ""
    var voltage: Int = 0
    var capacity: Int?
    
    //initializer
    init(){
        self.manufacturer = "default manufacturer"
        self.model = "default model"
        self.voltage = 120
    }
    
    //additional init
    init(withVoltage: Int){
        self.manufacturer = "default manufacturer"
        self.model = "default model"
        self.voltage = withVoltage
    }
    
    //deinitializer - only allowed in a class
    deinit {
        // perform cleanup code here
        // release a file resource
        // release a network resource
    }
    
    //methods
    func getDetails() -> String{
        var message = "This is the \(model) from \(self.manufacturer)."
        if self.voltage >= 220 {
            message += "This model is for European usage."
        }
        return message
        
    }
}

// creating insatnce of Appliance

var microwave = Appliance(withVoltage: 220)
microwave.manufacturer = "Next"
microwave.model = "good one"
print(microwave.getDetails())

var kettle = Appliance()
kettle.manufacturer = "Russell Hobbs"
kettle.model = "Best Kettle"
kettle.voltage = 240
print(kettle.getDetails())

