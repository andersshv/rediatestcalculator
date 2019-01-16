//
//  ResultErrorState.swift
//  RediaTestCalculator
//
//  Created by anders on 15/01/2019.
//  Copyright © 2019 ASVGames. All rights reserved.
//

import Foundation

class ResultErrorState: StringGeneratorState {
    
    var model: Model!
    
    init(_ model: Model) {
        self.model = model
    }
    
    func getText() -> String {
        return "Error"
    }
    
    func buttonClicked(_ button: ButtonEnum, stringGenerator: StringGenerator) {
        switch button {
        case ButtonEnum.number(let number):
            model.setVarA(String(number))
            StringGeneratorStateHelper.goToWriteFirstVarState(model, stringGenerator: stringGenerator)
        case ButtonEnum.plus:
            break
        case ButtonEnum.minus:
            break
        case ButtonEnum.times:
            break
        case ButtonEnum.dividedBy:
            break
        case ButtonEnum.enter:
            break
        case ButtonEnum.clear:
            StringGeneratorStateHelper.goToStartState(stringGenerator)
        }
    }
    
}
