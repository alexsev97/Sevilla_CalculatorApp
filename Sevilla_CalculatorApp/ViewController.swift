//
//  ViewController.swift
//  Sevilla_CalculatorApp
//
//  Created by Alejandro Sevilla Romero  on 17/10/2018.
//  Copyright © 2018 Alejandro Sevilla Romero . All rights reserved.
//

import UIKit

var A = "0"
var C = "0"
var decYN = false
var op = "none"

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    func writeNumber(num: String){
        if floor(Double(num)!) == Double(num) {
            resultLabel.text = String(Int(Double(num)!))
        }
        else{
            resultLabel.text = num
        }
    }
    
    func numberButton(num: Int){
        if (A == "0"){
            A = String(num)
        }
        else {
            A += String(num)
        }
        writeNumber(num: A)
    }
    
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
    
    @IBAction func plusButton(_ sender: Any) {
        decYN = false
        if (op != "none"){
            endOperation()
        }
        else {
            if(A != "0"){
                C = A
                A = "0"}
        }
        op = "plus"
    }
    
    @IBAction func minusButton(_ sender: Any) {
        decYN = false
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
        if (op != "none"){
            endOperation()
        }
        if floor(Double(C)!) == Double(C) {
            resultLabel.text = String(Int(Double(C)!))
        }
        else{
            resultLabel.text = C
        }
    }
    
    @IBAction func eraseButton(_ sender: Any) {
        A = "0"
        C = "0"
        decYN = false
        resultLabel.text = C
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        if (A != "0"){
            A = String(A.dropLast())
            if (A.last == "."){
                A = String(A.dropLast())
                decYN = false
            }
            if (A == "" || A == "-"){
                A = "0"
            }
            writeNumber(num: A)
        }
    }
    
    @IBAction func decimalButton(_ sender: Any) {
        if(!decYN){
            A += "."
            decYN = true
        }
    }
    
    @IBAction func posNegButton(_ sender: Any) {
        if (A != "0"){
            if (A.prefix(1) != "-"){
                A.insert("-", at: A.startIndex)
            }
            else{
                A.remove(at: A.startIndex)
            }
            writeNumber(num: A)
        }
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
