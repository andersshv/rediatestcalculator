//
//  WriteSecondVarState.swift
//  RediaTestCalculator
//
//  Created by anders on 15/01/2019.
//  Copyright © 2019 ASVGames. All rights reserved.
//

import Foundation

class WriteSecondVarState: StringGeneratorState {
    
    var model: Model!
    
    init(_ model: Model) {
        self.model = model
    }
    
    func getText() -> String {
        return model.getVarB()
    }
    
    func buttonClicked(_ button: ButtonEnum, stringGenerator: StringGenerator) {
        switch button {
        case ButtonEnum.number(let number):
            let currVarB = model.getVarB()
            if currVarB == "0" {
                model.setVarB(String(number))
            } else {
                model.setVarB(currVarB! + String(number))
            }
        case ButtonEnum.plus:
            calculateResultAndGoToState(PlusFunctionStrategy(), stringGenerator: stringGenerator)
        case ButtonEnum.minus:
            calculateResultAndGoToState(MinusFunctionStrategy(), stringGenerator: stringGenerator)
        case ButtonEnum.times:
            calculateResultAndGoToState(TimesFunctionStrategy(), stringGenerator: stringGenerator)
        case ButtonEnum.dividedBy:
            calculateResultAndGoToState(DividedByFunctionStrategy(), stringGenerator: stringGenerator)
        case ButtonEnum.enter:
            let res = Calculator.getResult(model)
            model.setVarA(res)
            var state: StringGeneratorState!
            if res == "Error" {
                state = ResultErrorState(model)
            } else {
                state = ResultSuccesState(model)
            }
            stringGenerator.setState(state)
        case ButtonEnum.clear:
            StringGeneratorStateHelper.goToStartState(stringGenerator)
        }
    }
    
    func calculateResultAndGoToState(_ functionStrategy: FunctionStrategy, stringGenerator: StringGenerator) {
        let res = Calculator.getResult(model)
        model.setVarA(res)
        model.setFunctionStrategy(functionStrategy)
        if res == "Error" {
            let state = ResultErrorState(model)
            stringGenerator.setState(state)
        } else {
            StringGeneratorStateHelper.goToFunctionJustClickedState(model, stringGenerator: stringGenerator)
        }
    }
    
}
