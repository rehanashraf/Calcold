//
//  ViewController.swift
//  Calculator
//
//  Created by Rehan Ashraf on 12/3/16.
//  Copyright © 2016 Rehan Ashraf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    var userIsInTheMiddleOfTyping = false
    
    var displayValue: Double{
        get{
            return Double(display.text!)!
        }
        set{
            display.text = String(newValue)
        }
    }
    


    @IBAction func touchDigit(_ sender: UIButton) {
     if   let digit = sender.currentTitle
     {
        let textCurrentlyInDisplay = display.text!
        if userIsInTheMiddleOfTyping
        {
            display.text = textCurrentlyInDisplay + digit
        }
        else
        {
            if digit == "."
            {
                
            }
            display.text = digit
            userIsInTheMiddleOfTyping = true
        }
        
        }
    }


    @IBAction func performOperation(_ sender: UIButton) {
        if let mathematicalSymbol = sender.currentTitle{
            if mathematicalSymbol == "π"{
                displayValue = M_PI
            }
            else if mathematicalSymbol == "C"{
                    displayValue = 0

            }
            else if mathematicalSymbol == "√" {
                displayValue = sqrt(displayValue)
            }
            else if mathematicalSymbol == "±"{
                displayValue = displayValue*(-1)
            }
        }
        userIsInTheMiddleOfTyping = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


