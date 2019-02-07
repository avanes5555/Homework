import UIKit


//Домашнее задание урок 2
//1.Написать функцию, которая определяет, четное число или нет.


func parser() -> Int {
    //есть массив/ряд чисел
    let a = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,16,17,18,19,20]
    
    for evenNumber in a where evenNumber % 2 == 0 {
        //для элементов у которых остаток от деления на 2 равен нулю
        print (evenNumber)//выводим на печать
        }
    return 0
    }

parser()

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func remainderOfDivision () -> Int {
    let massive = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,16,17,18,19,20]
    for result in massive where result % 3 == 0 {
        print (result)
        }
    return 0
    }
remainderOfDivision()

 
//3. Создать возрастающий массив из 100 чисел.

var array = [Int](0...100)
//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.


func remainder ()  {
    var array = [Int](0...100)
    for i in 0...100{
        print ("--")
        if   i % 3 == 0{
         continue
        }
        if i % 2 == 0{
            continue
        }
        print ("end \(i)")
        
    }
}
remainder()
 









    












