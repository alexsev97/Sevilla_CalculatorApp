//
//  ViewController.swift
//  Sevilla_CalculatorApp
//
//  Created by Alejandro Sevilla Romero  on 17/10/2018.
//  Copyright © 2018 Alejandro Sevilla Romero . All rights reserved.
//

import UIKit

var A = 0
var B = 0
var C = 0
var plus = false

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    func numberButton(num: Int){
        if (plus){
            C += num
            plus = false
        }
        else {
            C = num
        }
        resultLabel.text = String(num)
    }
    
    @IBAction func oneButton(_ sender: Any) {
        numberButton(num: 1)
    }
    
    
    @IBAction func twoButton(_ sender: Any) {
        numberButton(num: 2)
    }
    
    
    @IBAction func plusButton(_ sender: Any) {
        plus = true
        resultLabel.text = String(C)
    }
    
    @IBAction func equalButton(_ sender: Any) {
        resultLabel.text = String(C)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

