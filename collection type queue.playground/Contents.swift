import UIKit


protocol Tax {
var Vat: Double{ get set }
}

class SumReg: Tax {
    var Vat: Double
    var price: Double
    var quantity: Double
    func amount(price: Double, quantity: Double) -> Double {
        let Amount = ((price * quantity) * Vat) / 110.00
        return Amount
    }
    
    init(price: Double, quantity: Double, Vat: Double) {
        self.price = price
        self.quantity = quantity
        self.Vat = Vat
    }
}





class SumCheck: Tax {
    var Vat: Double
    var DiscountAmount: Double
    var TotalSum: Double
    func sumCheck(DiscountAmount: Double, TotalSum: Double) -> Double {
        let TotalCheck = TotalSum - TotalSum
        return TotalCheck
        }
    
    init(DiscountAmount: Double, TotalSum: Double, Vat: Double) {
        self.DiscountAmount = DiscountAmount
        self.TotalSum = TotalSum
        self.Vat = Vat
    }
}
        

struct Queue<T> {
    private var elements: [T] = []
    mutating func push(_ element: T){
        elements.append(element)
    }
    mutating func pop() -> T? {
        return elements.removeLast()
    }
}

var stackSumReg = Queue<SumReg>()
var stackSumCheck = Queue<SumCheck>()

stackSumReg.push(SumReg(price: 5.5, quantity: 2.345, Vat: 10.00))
stackSumReg.push(SumReg(price: 10.00, quantity: 10.0, Vat: 20))
stackSumCheck.push(SumCheck(DiscountAmount: 0.90, TotalSum: 12.90, Vat: 10.00))
stackSumCheck.push(SumCheck(DiscountAmount: 1.00, TotalSum: 100.00, Vat: 20.00))

stackSumReg.pop()
stackSumCheck.pop()

struct QueueTax<T: Tax> {
    private var elements: [T] = []
    mutating func push(_ element: T){
        elements.append(element)
    }
    mutating func pop() -> T? {
        return elements.removeLast()
    }
    
    var totalVat: Double{
        var Vat = 0.0
        for element in elements {
            Vat += element.Vat
        }
        return Vat
    }
    
    subscript(index: Int) -> T {
        return elements[index]
    }
    subscript(elements: Int ...) -> Double {
        var Vat = 0.00
        for index in elements where index < self.elements.count {
            Vat += self.elements[index].Vat
        }
        return Vat
    }
}

var stack = QueueTax<SumCheck>()

stack.push(SumCheck(DiscountAmount: 1.00, TotalSum: 100.00, Vat: 10.00))
stack.push(SumCheck(DiscountAmount: 2.00, TotalSum: 200.00, Vat: 18.00))
stack.push(SumCheck(DiscountAmount: 3.00, TotalSum: 300.00, Vat: 20.00))
stack.push(SumCheck(DiscountAmount: 4.00, TotalSum: 400.00, Vat: 10.00))
stack.push(SumCheck(DiscountAmount: 5.00, TotalSum: 500.00, Vat: 18.00))
stack.push(SumCheck(DiscountAmount: 6.00, TotalSum: 600.00, Vat: 20.00))
print(stack[1,2,3,4,5])
print(stack[0])
print(stack.totalVat)











