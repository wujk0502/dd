//
//  ViewController.swift
//  tip
//
//  Created by Wu Jiankun on 7/11/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmountSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Calculator"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onTap(_ sender: Any) {
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipAmountSegmentedControl.selectedSegmentIndex]
        let total = bill+tip
        
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

