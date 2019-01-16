//
//  StringGeneratorState.swift
//  RediaTestCalculator
//
//  Created by anders on 15/01/2019.
//  Copyright © 2019 ASVGames. All rights reserved.
//

import Foundation

protocol StringGeneratorState {
    
    func getText() -> String
    
    func buttonClicked(_ button: ButtonEnum, stringGenerator: StringGenerator)
    
}
