//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Ahmed Halilovic on 21. 9. 2024..
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiVal: String?
    var colorText: UIColor?
    var adviceText: String?
    
    @IBOutlet weak var bmiValue: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bmiValue.text = bmiVal
        adviceLabel.text = adviceText
        bmiValue.textColor = colorText
    }
    
    // Button to cancel and remove segue and go back to main view
    @IBAction func recalculateButton(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
}
