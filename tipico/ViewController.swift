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
    @IBOutlet weak var subTotalField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subTotalField.becomeFirstResponder()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didReceiveTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func didChangeValue(_ sender: UITextField) {
        let subTotal = Double(sender.text!) ?? 0
        TipModel.sharedInstance.subTotal = subTotal
        tipLabel.text = String(format: "$%0.2f", TipModel.sharedInstance.getTip())
        totalLabel.text = String(format: "$%0.2f", TipModel.sharedInstance.getTotal())
    }
    
}

