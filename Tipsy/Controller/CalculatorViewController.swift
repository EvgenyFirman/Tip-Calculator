//
//  ViewController.swift
//  Tipsy


import UIKit

class CalculatorViewController: UIViewController {
    
    // Bill Text Field
    @IBOutlet weak var billTextField: UITextField!
    // Zero Percentage Tip
    @IBOutlet weak var zeroPictureBTN: UIButton!
    // Ten Percentage Tip
    @IBOutlet weak var tenPictureBTN: UIButton!
    // Twenty Percentage Tip
    @IBOutlet weak var twentyPictureBTN: UIButton!
    // People Split Label
    @IBOutlet weak var peopleSplitLabel: UILabel!
    
    //Tip changed percentage
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPictureBTN.isSelected = false
        tenPictureBTN.isSelected = false
        twentyPictureBTN.isSelected = false
            sender.isSelected = true
    
    }
    
    // Stepper value changed
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
    }
    // Calculate BTN
    @IBAction func calculatePressed(_ sender: Any) {
    }
    

}

