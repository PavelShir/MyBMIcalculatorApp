//
//  ResultViewController.swift
//  MyBMIcalculatorApp
//
//  Created by Павел Широкий on 25.02.2024.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue = "0.0"
    var advice: String?
    var color: UIColor?
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var recommendLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = bmiValue
        recommendLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculateButtonPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
    // MARK: - Navigation

   

}
