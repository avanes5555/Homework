import UIKit

protocol Car {
    func startEngine() -> Bool
    func openDoor() -> Bool
    func switchTransmission() -> Int
    
    var OpenDoor: Bool {get set}
    var OpenWindow: Bool {get set}
    var StartedEngine: Bool {get set}
    var Color: UIColor {get set}
    var Model: String {get set}
    var Power: Int {get set}
    var Speed: Int {get set}
    var Weight: Double {get set}
    var Lenght: Double {get set}
   
    

    
    //init(model: String, color: UIColor, openDoor: Bool,openWindow: Bool, startedEngine: Bool, power: Int, speed: Int, weight: Double, lenght: Double)
    
    
}




extension Car {
  
    
    
    
    
    mutating func startEngine() {
        self.StartedEngine = !StartedEngine
    }
    
    mutating func openDoor() {
        self.OpenDoor = !OpenDoor
    }
    mutating func switchTransmission() -> Int {
     
        return 4
        }
   }



class trunkCar: Car {
  
    
    func startEngine() -> Bool {
        return true
    }
    
    func openDoor() -> Bool {
        return true
    }
    
    func switchTransmission() -> Int {
        return 5
    }
   
    
    var OpenDoor: Bool
    var OpenWindow: Bool
    var StartedEngine: Bool
    var Color: UIColor
    var Model: String
    var Power: Int
    var Speed: Int
    var Weight: Double
    var Lenght: Double
    
 
 required init(model: String, color: UIColor, openDoor: Bool,openWindow: Bool, startedEngine: Bool, power: Int, speed: Int, weight: Double, lenght: Double) {
    
        self.Model = model
        self.Color = color
        self.OpenDoor = openDoor
        self.OpenWindow = openWindow
        self.StartedEngine = startedEngine
        self.Power = power
        self.Speed = speed
        self.Weight = weight
        self.Lenght = lenght
    
    }
}

    
    var Cargo = trunkCar(model: "Cat", color: .yellow, openDoor: true, openWindow: true, startedEngine: false, power: 344, speed: 120, weight: 5800, lenght: 8300.00)







    
class sportCar: Car {
    //var Gear: Int
    
    
    func startEngine() -> Bool {
        return true
    }
    
    func openDoor() -> Bool {
        return true
    }
    
    func switchTransmission() -> Int {
        return 5
    }
    
    
    var OpenDoor: Bool
    var OpenWindow: Bool
    var StartedEngine: Bool
    var Color: UIColor
    var Model: String
    var Power: Int
    var Speed: Int
    var Weight: Double
    var Lenght: Double
    var Turbo: Bool
    
    required init(model: String, color: UIColor, openDoor: Bool,openWindow: Bool, startedEngine: Bool, power: Int, speed: Int, weight: Double, lenght: Double, turbo: Bool) {
      
        
        self.Model = model
        self.Color = color
        self.OpenDoor = openDoor
        self.OpenWindow = openWindow
        self.StartedEngine = startedEngine
        self.Power = power
        self.Speed = speed
        self.Weight = weight
        self.Lenght = lenght
        self.Turbo = turbo
       
    
    
    }
}

var AMG = sportCar(model: "AMG", color: .black, openDoor: false, openWindow: false, startedEngine: false, power: 321, speed: 331, weight: 2500, lenght: 400.44, turbo: true)

AMG.Power = 332
AMG.Color = .black
AMG.OpenDoor = true
print(AMG)
