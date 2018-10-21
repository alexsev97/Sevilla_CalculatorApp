//
//  ViewController.swift
//  Sevilla_CalculatorApp
//
//  Created by Alejandro Sevilla Romero  on 17/10/2018.
//  Copyright © 2018 Alejandro Sevilla Romero . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var A = "0"
    var C = "0"
    var decYN = false
    var op = "none"
    let maxDigits = 12
    var numDigits = 0
    
    @IBOutlet weak var resultLabel: UILabel!
    
    // We can write numbers (either decimals or integers) with this function in the correct format
    func writeNumber(num: String){
        if floor(Double(num)!) == Double(num) {
            // If we take out the decimals and the number stays the same, it is an integer number
            resultLabel.text = String(Int(Double(num)!))
        }
        else{
            // If not we write the decimal numbers too
            resultLabel.text = num
        }
    }
    
    // When the user presses a number button, we add it to the string that represents the whole number
    func numberButton(num: Int){
        if (numDigits < maxDigits){
            numDigits += 1
            if (A == "0"){
                A = String(num)
            }
            else {
                A += String(num)
            }
                writeNumber(num: A) // we write it in the result label
        }
    }
    
    // When the user presses an operation button we end the operation that was pending so we can keep on accumulating the result
    func endOperation(){
        if (op == "plus"){
            C = String(Double(C)!+Double(A)!)
            A = "0"
        }
        else if (op == "minus"){
            C = String(Double(C)!-Double(A)!)
            A = "0"
        }
        else if (op == "mul"){
            C = String(Double(C)!*Double(A)!)
            A = "0"
        }
        else if (op == "div"){
            C = String(Double(C)!/Double(A)!)
            A = "0"
        }
        op = "none"
        writeNumber(num: C)
    }
    
    // NUMBER BUTTONS
    @IBAction func oneButton(_ sender: Any) {
        numberButton(num: 1)
    }
    
    @IBAction func twoButton(_ sender: Any) {
        numberButton(num: 2)
    }
    
    @IBAction func threeButton(_ sender: Any) {
        numberButton(num: 3)
    }
    
    @IBAction func fourButton(_ sender: Any) {
        numberButton(num: 4)
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        numberButton(num: 5)
    }
    
    @IBAction func sixButton(_ sender: Any) {
        numberButton(num: 6)
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        numberButton(num: 7)
    }
    
    @IBAction func eightButton(_ sender: Any) {
        numberButton(num: 8)
    }
    
    @IBAction func nineButton(_ sender: Any) {
        numberButton(num: 9)
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        numberButton(num: 0)
    }
    
    // OPERATION BUTTONS
    @IBAction func plusButton(_ sender: Any) {
        // If an operation button is pressed the new number being introduced is not a decimal anymore
        decYN = false
        numDigits = 0
        if (op != "none"){
            endOperation()
        }
        else {
            // If there was no current operation, the only thing that's been done is introduce A, so we keep it in the variable C so a new number can be introduced
            if(A != "0"){
                C = A
                A = "0"}
        }
        op = "plus"
    }
    
    @IBAction func minusButton(_ sender: Any) {
        decYN = false
        numDigits = 0
        if (op != "none"){
            endOperation()
        }
        else {
            if(A != "0"){
                C = A
                A = "0"}
        }
        op = "minus"
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        decYN = false
        numDigits = 0
        if (op != "none"){
            endOperation()
        }
        else {
            if(A != "0"){
                C = A
                A = "0"}
        }
        op = "mul"
    }
    
    @IBAction func divButton(_ sender: Any) {
        decYN = false
        numDigits = 0
        if (op != "none"){
            endOperation()
        }
        else {
            if(A != "0"){
                C = A
                A = "0"}
        }
        op = "div"
    }
    
    @IBAction func equalButton(_ sender: Any) {
        decYN = false
        numDigits = 0
        if (op != "none"){
            endOperation()
        }
        writeNumber(num: C)
    }
    
    // C BUTTON
    @IBAction func eraseButton(_ sender: Any) {
        // Everything is reseted
        A = "0"
        C = "0"
        numDigits = 0
        decYN = false
        resultLabel.text = C
    }
    
    // ← BUTTON
    @IBAction func deleteButton(_ sender: Any) {
        // It only works if there's something in A
        if (A != "0"){
            numDigits -= 1
            // We take out the last character
            A = String(A.dropLast())
            // If we've taken out all of the decimals, we take out . too
            if (A.last == "."){
                A = String(A.dropLast())
                decYN = false
            }
            // If we are left with nothing or just a -, we write 0
            if (A == "" || A == "-"){
                A = "0"
                numDigits = 0
            }
            writeNumber(num: A)
        }
    }
    
    // . BUTTON
    @IBAction func decimalButton(_ sender: Any) {
        // With decYN we make sure the number only has one .
        if(!decYN){
            A += "."
            decYN = true
        }
    }
    
    // +/- BUTTON
    @IBAction func posNegButton(_ sender: Any) {
        // We make sure A is not 0
        if (A != "0"){
            // If it's positive we change it to negative
            if (A.prefix(1) != "-"){
                A.insert("-", at: A.startIndex)
            }
            // Else we remove "-"
            else{
                A.remove(at: A.startIndex)
            }
            writeNumber(num: A)
        }
            // If A is still 0 but we have something in C we can change it
            else if (C != "0"){
                if (C.prefix(1) != "-"){
                    C.insert("-", at: C.startIndex)
                }
                else{
                    C.remove(at: C.startIndex)
                }
            writeNumber(num: C)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}
