//
//  TipModel.swift
//  tipico
//
//  Created by jeduan_cornejo on 9/6/17.
//  Copyright © 2017 jeduan_cornejo. All rights reserved.
//

import Foundation

class TipModel {
    
    static let sharedInstance = TipModel()
    
    var subTotal: Double
    var tipPercentage: Double
    
    private init() {
        self.subTotal = 0
        self.tipPercentage = 0.18
    }
    
    func getTip() -> Double {
        return self.subTotal * self.tipPercentage
    }
    
    func getTotal() -> Double {
        return self.subTotal + self.getTip()
    }
}
