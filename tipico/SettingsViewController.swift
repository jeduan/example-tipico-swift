//
//  SettingsViewController.swift
//  tipico
//
//  Created by jeduan_cornejo on 9/6/17.
//  Copyright © 2017 jeduan_cornejo. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var percentControl: UISegmentedControl!
    let tipPercentages: Array<Double> = [
        0.18,
        0.2,
        0.25
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch TipModel.sharedInstance.tipPercentage {
        case 0.2:
            self.percentControl.selectedSegmentIndex = 1
        case 0.25:
            self.percentControl.selectedSegmentIndex = 2
        default:
            self.percentControl.selectedSegmentIndex = 0
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didChange(_ sender: UISegmentedControl) {
        let tipPercentage = self.tipPercentages[sender.selectedSegmentIndex]
        TipModel.sharedInstance.tipPercentage = tipPercentage
    }

    // MARK: - Navigation
    
    override func didMove(toParentViewController parent: UIViewController?) {
        TipModel.sharedInstance.subTotal = 0
    }

}
