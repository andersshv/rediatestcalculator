//
//  ResultSuccesState.swift
//  RediaTestCalculator
//
//  Created by anders on 15/01/2019.
//  Copyright © 2019 ASVGames. All rights reserved.
//

import Foundation

class ResultSuccesState: StringGeneratorState {
    
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
            model.setVarA(String(number))
            StringGeneratorStateHelper.goToWriteFirstVarState(model, stringGenerator: stringGenerator)
        case ButtonEnum.plus:
            model.setFunctionStrategy(PlusFunctionStrategy())
            StringGeneratorStateHelper.goToFunctionJustClickedState(model, stringGenerator: stringGenerator)
        case ButtonEnum.minus:
            model.setFunctionStrategy(MinusFunctionStrategy())
            StringGeneratorStateHelper.goToFunctionJustClickedState(model, stringGenerator: stringGenerator)
        case ButtonEnum.times:
            model.setFunctionStrategy(TimesFunctionStrategy())
            StringGeneratorStateHelper.goToFunctionJustClickedState(model, stringGenerator: stringGenerator)
        case ButtonEnum.dividedBy:
            model.setFunctionStrategy(DividedByFunctionStrategy())
            StringGeneratorStateHelper.goToFunctionJustClickedState(model, stringGenerator: stringGenerator)
        case ButtonEnum.enter:
            break
        case ButtonEnum.clear:
            StringGeneratorStateHelper.goToStartState(stringGenerator)
        }
    }
    
}
