//
//  main.swift
//  calculator
//
//  Created by 강유정 on 6/4/24.
//

//import Foundation
//
//print("Hello, World!")

class Calculator {
    var oprator: String = ""
    var firstNumber: Int = 0
    var secondNumber: Int = 0

//    init(oprator: String, firstNumber: Int, secondNumber: Int) {
//        self.oprator = oprator
//        self.firstNumber = firstNumber
//        self.secondNumber = secondNumber
//    }
    
    func calculator(oprator: String, firstNumber: Int, secondNumber: Int) -> Double {
        
        switch oprator {
            case "+":
                return Double(firstNumber + secondNumber)
            case "-":
                return Double(firstNumber - secondNumber)
            case "*":
                return Double(firstNumber * secondNumber)
            case "/":
                return Double(firstNumber / secondNumber)
            case "%":
                return Double(firstNumber % secondNumber)
            default:
                print("ERROR")
                return 0
               
               }
        }
}

let num = Calculator()
//print(num.calculator(oprator: "+", firstNumber: 1, secondNumber: 2))


class AbstractOperation : Calculator {
    
    func add(firstNumber: Int, secondNumber: Int) -> Double {
        Double(firstNumber + secondNumber)
    }
    
    func Subtract(firstNumber: Int, secondNumber: Int) -> Double {
        Double(firstNumber - secondNumber)
    }
    
    func Multiply(firstNumber: Int, secondNumber: Int) -> Double {
        Double(firstNumber * secondNumber)
    }
                                            
    func Divide(firstNumber: Int, secondNumber: Int) -> Double {
        Double(firstNumber / secondNumber)
    }
}


class AddOperation : AbstractOperation {

    override func add(firstNumber: Int, secondNumber: Int) -> Double {
        super.add(firstNumber: firstNumber, secondNumber: secondNumber)
    }
}

let addResult = AddOperation()
print(addResult.add(firstNumber: 2, secondNumber: 2))


class SubtractOperation: AbstractOperation {
    
    override func Subtract(firstNumber: Int, secondNumber: Int) -> Double {
        super.Subtract(firstNumber: firstNumber, secondNumber: secondNumber)
    }
}


class MultiplyOperation: AbstractOperation {
    override func Multiply(firstNumber: Int, secondNumber: Int) -> Double {
        super.Multiply(firstNumber: firstNumber, secondNumber: secondNumber)
    }
}


class DivideOperation: AbstractOperation {
    override func Divide(firstNumber: Int, secondNumber: Int) -> Double {
        super.Divide(firstNumber: firstNumber, secondNumber: secondNumber)
    }
}
