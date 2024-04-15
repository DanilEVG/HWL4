import Cocoa

/*
 Задание 1
 Написать функцию для сложения, вычитания, умножения, деления и остатка от деления двух чисел
 */
func divide(_ x: Double, on y: Double) -> Double{
    x / y
}

func multiply(_ x: Double, on y: Double) -> Double{
    x * y
}

func add(_ x: Double, with y: Double) -> Double{
    x + y
}

func subtract(from x: Double, _ y: Double) -> Double{
    x - y
}

func remainderOfTheDivision(_ x: Int, on y: Int) -> Int{
    x % y
}

remainderOfTheDivision(10, on: 5)
subtract(from: 10, 5)
add(10, with: 5)
multiply(10, on: 5)
divide(10, on: 5)

/*
 Задание 2
 Числа фибоначи рекурчией
 f(n) = f(n-1) + f(n-2)
 1,1,2,3,5,8,13,21,34,55
 */

func fibonachi(to n: Int) -> Int{
    if n < 2 {
        return n
    }
    return fibonachi(to: n - 1) + fibonachi(to: n - 2)
}

fibonachi(to: 10)


/*
 Задание 3
 написать функцию для целой части числа и дробной
 */

func int(to n: Double) -> Int{
    Int(n)
}

func pow(_ x: Int, _ y: Int) -> Int {
    Int(pow(Double(x), Double(y)))
}

func fractionalPart(from n: Double) -> Int {
    var bufN = Double(Int(n))
    var i = 0
    while bufN >= 1 {
        i += 1
        bufN /= 10
    }
    
    let multiplier = pow(10, 18 - i)
    let intN = Int(n) * Int(multiplier)
    let fullIntN = n * Double(multiplier)
    
    var result = Int(fullIntN) - intN
    while result % 10 == 0 {
        result = result / 10
    }
    return Int(result)
}
int(to: 9223.32209)
fractionalPart(from: 9223.32209)
int(to: 91923.321029)
fractionalPart(from: 91923.321029)
fractionalPart(from: 0.222)


/*
 Написать функцию, которая проверит все числа от 1 до N на задаваемое условие через клоужер
 а) делимость на 2
 б) меньше 5
 в) является простым числом
 */


func checkRange(to n: Int, _ action: (Int) -> Void) {
    for i in 0...n {
        action(i)
    }
}

checkRange(to: 10) { number in
    number % 2 == 0 ? print("Число", number, "делится на 2") : print("Число", number, "не делится на 2")
}

checkRange(to: 10) { number in
    number < 5 ? print("Число", number, "меньше 5") : nil
}

checkRange(to: 10) { number in
    if number >= 2 {
        var flag = true
        for i in 2 ..< number    {
            if number % i == 0 {
                flag = false
            }
        }
        flag ? print("Число", number, "простое") : nil
    }
}



