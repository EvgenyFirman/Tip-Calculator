//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Евгений Фирман on 25.04.2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingLabel: UILabel!
    
    var totalAmount: Float = 0.0
    var numberOfPeople: Int = 0
    var tipPercentage: Int = 0
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(totalAmount)
        totalLabel.text = String(format:"%.1f", totalAmount)
        resultLabel.text = "Split between \(numberOfPeople) people, with \(tipPercentage) % tip percentage"
        
    }
    
    @IBAction func recalculateButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
