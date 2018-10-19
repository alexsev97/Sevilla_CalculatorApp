//
//  ViewController.swift
//  Sevilla_CalculatorApp
//
//  Created by Alejandro Sevilla Romero  on 17/10/2018.
//  Copyright © 2018 Alejandro Sevilla Romero . All rights reserved.
//

import UIKit

var A = 0
var C = 0
var dec = 10
var op = "none"

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    func numberButton(num: Int){
        if (A == 0){
            A = num
        }
        else {
            A *= 10
            A += num
        }
        resultLabel.text = String(A)
    }
    
    func endOperation(){
        if (op == "plus"){
            C += A
            A = 0
        }
        else if (op == "minus"){
            C -= A
            A = 0
        }
        else if (op == "mul"){
            C *= A
            A = 0
        }
        else if (op == "div"){
            C /= A
            A = 0
        }
        op = "none"
        resultLabel.text = String(C)
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
        if (op != "none"){
            endOperation()
        }
        else {
            if(A != 0){
                C = A
                A = 0}
        }
        op = "plus"
    }
    
    @IBAction func minusButton(_ sender: Any) {
        if (op != "none"){
            endOperation()
        }
        else {
            if(A != 0){
                C = A
                A = 0}
        }
        op = "minus"
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        if (op != "none"){
            endOperation()
        }
        else {
            if(A != 0){
                C = A
                A = 0}
        }
        op = "mul"
    }
    
    @IBAction func divButton(_ sender: Any) {
        if (op != "none"){
            endOperation()
        }
        else {
            if(A != 0){
                C = A
                A = 0}
        }
        op = "div"
    }
    
    
    @IBAction func equalButton(_ sender: Any) {
        if (op != "none"){
            endOperation()
        }
        resultLabel.text = String(C)
    }
    
    @IBAction func eraseButton(_ sender: Any) {
        A = 0
        C = 0
        resultLabel.text = String(C)
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        if(A != 0){
            A /= 10
            resultLabel.text = String(A)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}
