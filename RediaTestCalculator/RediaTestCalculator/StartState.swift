//
//  StartState.swift
//  RediaTestCalculator
//
//  Created by anders on 15/01/2019.
//  Copyright © 2019 ASVGames. All rights reserved.
//

import Foundation

class StartState: StringGeneratorState {
    
    var model: Model!
    
    init() {
        model = Model()
    }
    
    func getText() -> String {
        return "0"
    }
    
    func buttonClicked(_ button: ButtonEnum, stringGenerator: StringGenerator) {
        switch button {
        case ButtonEnum.number(let number):
            if number != 0 {
                model.setVarA(String(number))
                StringGeneratorStateHelper.goToWriteFirstVarState(model, stringGenerator: stringGenerator)
            }
        case ButtonEnum.plus:
            setVarAToZeroAndGoToState(PlusFunctionStrategy(), stringGenerator: stringGenerator)
        case ButtonEnum.minus:
            setVarAToZeroAndGoToState(MinusFunctionStrategy(), stringGenerator: stringGenerator)
        case ButtonEnum.times:
            setVarAToZeroAndGoToState(TimesFunctionStrategy(), stringGenerator: stringGenerator)
        case ButtonEnum.dividedBy:
            setVarAToZeroAndGoToState(DividedByFunctionStrategy(), stringGenerator: stringGenerator)
        case ButtonEnum.enter:
            break
        case ButtonEnum.clear:
            break
        }
    }
    
    func setVarAToZeroAndGoToState(_ functionStrategy: FunctionStrategy, stringGenerator: StringGenerator) {
        model.setVarA("0")
        model.setFunctionStrategy(functionStrategy)
        StringGeneratorStateHelper.goToFunctionJustClickedState(model, stringGenerator: stringGenerator)
    }
    
}
