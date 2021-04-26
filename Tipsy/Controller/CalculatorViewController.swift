//CalculatorViewController.swift

// By Eugene Firman 2021
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
    
    // Percentage Amount
    var amount: Float = 0.0
    
    // Value of people to divide amount on
    var steeperValue: Float = 2.0
    
    // Total Amount of Check
    var totalAmount: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearTip()
        
    }
    func clearTip(){
        zeroPictureBTN.isSelected = false
        tenPictureBTN.isSelected = false
        twentyPictureBTN.isSelected = false
    }
    //Tip changed percentage
    @IBAction func tipChanged(_ sender: UIButton) {
        // Clear all selected tip fields
        zeroPictureBTN.isSelected = false
        tenPictureBTN.isSelected = false
        twentyPictureBTN.isSelected = false
        // Enable Selection of tip
        sender.isSelected = true
        amount = Float(sender.titleLabel!.text!.dropLast())!
        // Disable keyboard on checking for tip
        billTextField.endEditing(true)
    }
    
    // Stepper value changed
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        steeperValue = Float(sender.value)
        peopleSplitLabel.text = String(format: "%.0f",steeperValue)
        
    }
    // Calculate BTN
    @IBAction func calculatePressed(_ sender: Any) {
        
        var billField = Float(billTextField.text!)!
       
        
        let percentAmount = Float(amount/100)
        
        totalAmount = ((billField + (billField * percentAmount)) /  steeperValue)
        // Perform Segue
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Segue identifier
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.totalAmount = totalAmount
            destinationVC.tipPercentage = Int(amount)
            destinationVC.numberOfPeople = Int(steeperValue)
        }
    }
}

