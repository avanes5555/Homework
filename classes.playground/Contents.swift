import UIKit

//Создадим класс родительский и дочерний



 enum Status {
    case openDoor
    case openWindow
    case startedEngine
}

enum Properties {
    case color
    case model
    case power
    case speed
    
}

enum openDoor {
    case open
    case close
}




open class Car {
    var openDoor: Bool
    var openWindow: Bool
    var startedEngine: Bool
    var color: UIColor
    var model: String
    var power: Int
    var speed: Int
    var weight: Double
    var lenght: Double
   
    
    init(model: String, color: UIColor, openDoor: Bool,openWindow: Bool, startedEngine: Bool, power: Int, speed: Int, weight: Double, lenght: Double) {
        self.model = model
        self.color = color
        self.openDoor = openDoor
        self.openWindow = openWindow
        self.startedEngine = startedEngine
        self.power = power
        self.speed = speed
        self.weight = weight
        self.lenght = lenght
      
        }
    
    
    
    
    
    func changeEndine(operation: Status, operation0: Properties) {
        switch operation {
        case .startedEngine:
            startedEngine = !startedEngine
        case .openWindow:
            openWindow = !openWindow
        case .openDoor:
            openDoor = !openDoor
            }
        switch operation0 {
        case .model:
            print ("Выпущен \(self.model) автомобиль")
        default:
            "TESLA"
        }
    
        
        
                
            }
        
     
        }

var car0 = Car(model: "0", color: .black, openDoor: true, openWindow: false, startedEngine: false, power: 99, speed: 135, weight: 2500, lenght: 5200)
var car1 = Car(model: "1", color: .blue, openDoor: false, openWindow: false, startedEngine: false, power: 44, speed: 55, weight: 4300, lenght: 6500)
var car2 = Car(model: "2", color: .clear, openDoor: false, openWindow: false, startedEngine: false, power: 66, speed: 55, weight: 1234, lenght: 4443)



/*
class sportCar: Car {
    }
var car3 = sportCar(model: "BMW", color: .black, openDoor: true, openWindow: false, startedEngine: false, power: 23, speed: 43, weight: 42, lenght: 23)
*/


enum setTurbo {
    case turbo //SCHWITZER
    case biturbo //KKK
}

class sportCar: Car {
  var turbo: Bool
    var biturbo: Bool
    init(model: String, color: UIColor, openDoor: Bool, openWindow: Bool, startedEngine: Bool, power: Int, speed: Int, weight: Double, lenght: Double, turbo: Bool, biturbo: Bool) {
        self.turbo = turbo
        self.biturbo = biturbo
  
        super.init(model: "3", color: .green, openDoor: true, openWindow: false, startedEngine: false, power: 333, speed: 333, weight: 222, lenght: 5200)
      }
    func SetTurbo(iteration: setTurbo) {
        switch iteration {
        case .turbo:
            turbo = !turbo
        case .biturbo:
            biturbo = !biturbo
       
        }
      
    }
       
}

var sportcar = sportCar(model: "SS", color: .brown, openDoor: true, openWindow: false, startedEngine: true, power: 456, speed: 567, weight: 2300, lenght: 4800, turbo: true, biturbo: true)

class override: sportCar {
     func SetTurbo() {
        super.SetTurbo(iteration: .biturbo)
        super.SetTurbo(iteration: .turbo)
    }
}

class final: sportCar {
    final func SetTurbo() {
        print ("Нельзя переопределять функцию")
    }
}

var car = [Car]()

car.append(car0)
car.append(car1)
car.append(car2)
car.append(sportcar)
for Cars in car {
    Cars.changeEndine(operation: .openDoor, operation0: .color)
    print(Cars.color,Cars.lenght, Cars.model,Cars.openDoor,Cars.openWindow,Cars.power,Cars.speed,Cars.startedEngine, Cars.weight)
}
















