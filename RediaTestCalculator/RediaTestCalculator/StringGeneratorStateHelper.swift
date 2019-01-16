//
//  StringGeneratorStateHelper.swift
//  RediaTestCalculator
//
//  Created by anders on 15/01/2019.
//  Copyright © 2019 ASVGames. All rights reserved.
//

import Foundation

class StringGeneratorStateHelper {
    
    static func goToStartState(_ stringGenerator: StringGenerator) {
        let state = StartState()
        stringGenerator.setState(state)
    }

    static func goToWriteFirstVarState(_ model: Model, stringGenerator: StringGenerator) {
        let state = WriteFirstVarState(model)
        stringGenerator.setState(state)
    }

    static func goToFunctionJustClickedState(_ model: Model, stringGenerator: StringGenerator) {
        let state = FunctionJustClickedState(model)
        stringGenerator.setState(state)
        
    }
    
    static func goToWriteSecondVarState(_ model: Model, stringGenerator: StringGenerator) {
        let state = WriteSecondVarState(model)
        stringGenerator.setState(state)
    }
    
}
