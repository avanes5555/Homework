 import UIKit
 import Darwin.C.math
 
 var str = "Решить квадратное уравнение - Расстояние между точками"
 struct Point {
    var x: Double
    var y: Double
 }
 struct Line {
    var p1: Point
    var p2: Point
    
    func length() -> Double {
        
        return sqrt( (p2.x - p1.x) * (p2.x - p1.x) + (p2.y - p1.y) * (p2.y - p1.y) )
        //A = √(X²+Y²) = √ ((X2-X1)²+(Y2-Y1)²)
        
    }
 }
 
 var l = Line(p1: Point(x: 6, y: 3), p2: Point(x: 7, y: 6))
 
 l.length()
 
 l.p1.x
 l.p2.x
 l.p1.y
 l.p2.y
 
 //Вычисляем площадь прямоугольного треугольника, даны катеты. Площадь равна половине произведения катетов
 
 var leg1: Double = 7.456 //катет 1
 var leg2: Double = 8.373 // катет 2

 var s: Double? = nil  // площадь неопределена
 s = (s ?? 0) // развернем переменную к дефолтному значению
 s = (leg1 * leg2) / 2
 print (s)
 
 //Вычисляем гипотенузу
 
 var hypotinase: Double? = nil // гипотенуа неопределена
 hypotinase = (hypotinase ?? 0) // развернем переменную к дефолтному значению
 hypotinase = sqrt((leg1 * leg1) + (leg2 * leg2)) // теоремa Пифагора
 print (hypotinase)
 
 //Вычисляем периметр треугольника

 var p: Double? = 0
 p = (leg1 + leg2 + hypotinase!)
 print (p)
 
 var string = "Рассчитать сумму вклада"
 
 let year: Double = 5.00
 let initial_deposit_amount: Double = 1000000.00
 let percents: Double = 12.000
 var final_deposit_amount: Double = 0
 func calculation() -> Double {
  final_deposit_amount = (initial_deposit_amount * pow((1 + percents / 100), 5))
    return final_deposit_amount
    }
 calculation()

 
 
 
 
 




