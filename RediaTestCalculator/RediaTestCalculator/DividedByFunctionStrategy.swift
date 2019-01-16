//
//  DividedByFunctionStrategy.swift
//  RediaTestCalculator
//
//  Created by anders on 14/01/2019.
//  Copyright © 2019 ASVGames. All rights reserved.
//

import Foundation

class DividedByFunctionStrategy: FunctionStrategy {
    func calculate(variableA: Double, variableB: Double) -> Double {
        let res = variableA / variableB
        return res
    }
}
