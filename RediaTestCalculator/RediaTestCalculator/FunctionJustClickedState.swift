//
//  FunctionJustClickedState.swift
//  RediaTestCalculator
//
//  Created by anders on 15/01/2019.
//  Copyright © 2019 ASVGames. All rights reserved.
//

import Foundation

class FunctionJustClickedState: StringGeneratorState {
    
    var model: Model!
    
    init(_ model: Model) {
        self.model = model
    }
    
    func getText() -> String {
        return model.getVarA()
    }
    
    func buttonClicked(_ button: ButtonEnum, stringGenerator: StringGenerator) {
        switch button {
        case ButtonEnum.number(let number):
            model.setVarB(String(number))
            StringGeneratorStateHelper.goToWriteSecondVarState(model, stringGenerator: stringGenerator)
        case ButtonEnum.plus:
            model.setFunctionStrategy(PlusFunctionStrategy())
        case ButtonEnum.minus:
            model.setFunctionStrategy(MinusFunctionStrategy())
        case ButtonEnum.times:
            model.setFunctionStrategy(TimesFunctionStrategy())
        case ButtonEnum.dividedBy:
            model.setFunctionStrategy(DividedByFunctionStrategy())
        case ButtonEnum.enter:
            break
        case ButtonEnum.clear:
            StringGeneratorStateHelper.goToStartState(stringGenerator)
        }
    }
    
}
