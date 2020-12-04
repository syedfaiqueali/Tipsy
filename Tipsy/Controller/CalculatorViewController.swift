//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    //MARK:- IBOutlets
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    //MARK:- Variables
    var tip = 0.10
    var numberOfPeople = 2
    var billTotal = 0.0
    var finalResult = "0.0"

    //MARK:- IBActions
    @IBAction func tipChanged(_ sender: UIButton) {
        //to end keyboard editing for bill section
        billTextField.endEditing(true)
        
        //to select and deselect the buttons
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        //for dropping % sign from button title
        let buttonTitle = sender.currentTitle!
        let buttonTitleMinuePercentSign = String(buttonTitle.dropLast())
        
        let buttonTitleAsANumber = Double(buttonTitleMinuePercentSign)!
        tip = buttonTitleAsANumber / 100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        numberOfPeople = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
    }
    
}

