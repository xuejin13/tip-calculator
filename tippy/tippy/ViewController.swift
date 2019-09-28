//
//  ViewController.swift
//  tippy
//
//  Created by Xuejin Gao on 9/27/19.
//  Copyright © 2019 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipField: UILabel!
    @IBOutlet weak var tipPercentage: UISegmentedControl!
    @IBOutlet weak var totalField: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
//        print("Hello")
        view.endEditing(true);
    }
    
    @IBAction func calculateBill(_ sender: Any) {
        //Get bill amount
        let bill = Double(billField.text!) ?? 0
        //Calculate tip and total
        let percentTips = [0.15, 0.18, 0.2]
        let tip = bill * percentTips[tipPercentage.selectedSegmentIndex]
        let total = bill + tip
        
        //Update tip and total
        tipField.text = String(format: "$%.2f", tip)
        totalField.text = String(format: "$%.2f", total)
    }
}

