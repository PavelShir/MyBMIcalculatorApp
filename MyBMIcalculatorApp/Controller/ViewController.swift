//
//  ViewController.swift
//  MyBMIcalculatorApp
//
//  Created by Павел Широкий on 24.02.2024.
//

import UIKit

class ViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButtonPress(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.claculateMbi(weight: weight, height: height)
        
        performSegue(withIdentifier: "GoToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToResult" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.bmiValue = calculatorBrain.getBMiValue()
            resultVC.advice = calculatorBrain.getAdvice()
            resultVC.color = calculatorBrain.getColor()
        }
    }
    
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        let value = String(format: "%.2f", sender.value)
        heightLabel.text = "\(value) m"
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let value = String(format: "%.0f", sender.value)
        weightLabel.text = "\(value) kg"
    }
    
}

