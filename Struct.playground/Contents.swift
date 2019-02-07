import UIKit

enum Distronic : Int{
    case manual = 1
    case auto = 2
    case none = 3
    }

enum Transmission: Int{
    case Variator = 1
    case Robot = 2
    case Auto = 3
    case Manual = 4
    case Secvental = 5
    
}

struct Transport {
    var model: String
    var weight: Double
    var color: String
    var power: Int
    var speed: Double
    var distronic: Distronic
    var transmission: Transmission
    
    
    var infO : Int {
        get {
            return  distronic.rawValue + transmission.rawValue
        } set {
            
        }
    }
    
    var info : String {
        get {
            return model + " " + color
        }
    }
    
}


struct getStatus {
        var openDoor: Bool
        var openWindow: Bool
        var startedEngine: Bool
        var color: String
        var model: String
        
        init(model: String, color: String) {
            openDoor = false
            openWindow = false
            startedEngine = true
            self.color = color
            self.model = model
        }
     
       mutating func changeEndine(){
            startedEngine = !startedEngine
        color = "Blue"
        
        }
       
    }
  
    var Status = getStatus(model: "Granta", color: "Dark")
print (Status)





var array = [Transport]()

var transportLight = Transport(model: "BMW", weight: 1700, color: "White", power: 252, speed: 250.00, distronic: .manual, transmission: .Secvental)
var cargo = Transport(model: "Caterpillar", weight: 27000, color: "Yellow", power: 950, speed: 58, distronic: .auto, transmission: .Variator)
print (cargo.info)
print (transportLight.info)
print (cargo.infO)
print (transportLight.infO)
print ("\(cargo.color)")



array.append(contentsOf: [transportLight, cargo])

for element in array {
    print (element)
}







