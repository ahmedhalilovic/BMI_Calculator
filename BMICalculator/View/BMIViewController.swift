//
//  ViewController.swift
//  BMICalculator
//
//  Created by Ahmed Halilovic on 18. 9. 2024..
//

import UIKit

class BMIViewController: UIViewController {
    
    // Variable to hold function that will calculate BMI value
    var calculateBMI = CalculateBMI()
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightUISlider: UISlider!
    @IBOutlet weak var heightUISlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let value = Int(sender.value)
        weightLabel.text = "\(String(value))kg"
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let value = round(sender.value * 100) / 100.0
        heightLabel.text = "\(String(value))m"
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let weight = weightUISlider.value
        let height = heightUISlider.value
        
        calculateBMI.calculateBMI(weight: weight, height: height)
        
        self.performSegue(withIdentifier: "showResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        // Only if segue is with this identifier, then we want to prepare
        if segue.identifier == "showResults" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.bmiVal = calculateBMI.getBMIValue()
            resultVC.adviceText = calculateBMI.getAdvice()
            resultVC.colorText = calculateBMI.getColor()
        }
    }
}

