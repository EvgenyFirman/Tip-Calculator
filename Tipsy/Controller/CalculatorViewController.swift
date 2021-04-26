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
    
    var amount: Float = 0.0
    var steeperValue: Float = 2.0
    var totalAmount: Float = 0.0
    //Tip changed percentage
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPictureBTN.isSelected = false
        tenPictureBTN.isSelected = false
        twentyPictureBTN.isSelected = false
            sender.isSelected = true
        amount = Float(sender.titleLabel!.text!.dropLast())!
        billTextField.endEditing(true)
    }
    
    // Stepper value changed
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        steeperValue = Float(sender.value)
        peopleSplitLabel.text = String(format: "%.0f",steeperValue)
        
    }
    // Calculate BTN
    @IBAction func calculatePressed(_ sender: Any) {

        totalAmount = ((Float(billTextField.text!)! + (Float(billTextField.text!)! * Float(amount/100))) /  steeperValue)
        
    
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.totalAmount = totalAmount
            destinationVC.tipPercentage = Int(amount)
            destinationVC.numberOfPeople = Int(steeperValue)
        }
    }
}

