//
//  ViewController.swift
//  tipico
//
//  Created by jeduan_cornejo on 9/5/17.
//  Copyright © 2017 jeduan_cornejo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipAmountControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didReceiveTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func didChangeValue(_ sender: Any) {
        let subTotal = Double(billField.text!) ?? 0
        let tipPercentages = [
            0.18,
            0.2,
            0.25
        ]
        let tipPercent = tipPercentages[tipAmountControl.selectedSegmentIndex]
        
        let tip = subTotal * tipPercent
        let total = subTotal + tip
        
        tipLabel.text = String(format: "$%0.2f", tip)
        totalLabel.text = String(format: "$%0.2f", total)
    }
    
}

