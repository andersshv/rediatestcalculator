//
//  StringGenerator.swift
//  RediaTestCalculator
//
//  Created by anders on 13/01/2019.
//  Copyright © 2019 ASVGames. All rights reserved.
//

import Foundation

class StringGenerator {
    
    var state: StringGeneratorState!
    
    init() {
        state = StartState()
    }
    
    func setState(_ state: StringGeneratorState) {
        self.state = state
    }
    
    func getText() -> String {
        return state.getText()
    }
    
    func buttonClicked(_ button: ButtonEnum) {
        state.buttonClicked(button, stringGenerator: self)
    }
    
}
