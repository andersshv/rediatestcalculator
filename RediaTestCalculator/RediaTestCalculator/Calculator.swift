//
//  Calculator.swift
//  RediaTestCalculator
//
//  Created by anders on 15/01/2019.
//  Copyright © 2019 ASVGames. All rights reserved.
//

import Foundation

class Calculator {
    
    static func getResult(_ model: Model) -> String {
        let dva = Double(model.getVarA())
        let dvb = Double(model.getVarB())
        let strategy = model.getFunctionStrategy()
        let dres = strategy!.calculate(variableA: dva!, variableB: dvb!)
        var res = forTrailingZero(dres)
        if res == "inf" || res == "-inf" {
            res = "Error"
        }
        return res
    }
    
    static func forTrailingZero(_ double: Double) -> String {
        let res = String(format: "%g", double)
        return res
    }
    
}
