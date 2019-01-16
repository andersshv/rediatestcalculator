//
//  TimesFunctionStrategy.swift
//  RediaTestCalculator
//
//  Created by anders on 14/01/2019.
//  Copyright © 2019 ASVGames. All rights reserved.
//

import Foundation

class TimesFunctionStrategy: FunctionStrategy {
    func calculate(variableA: Double, variableB: Double) -> Double {
        let res = variableA * variableB
        return res
    }    
}
