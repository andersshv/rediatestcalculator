//
//  Model.swift
//  RediaTestCalculator
//
//  Created by anders on 15/01/2019.
//  Copyright © 2019 ASVGames. All rights reserved.
//

import Foundation

class Model {
    
    var varA: String!
    var functionStrategy: FunctionStrategy!
    var varB: String!
    
    func getVarA() -> String! {
        return varA
    }
    
    func setVarA(_ newVarA: String!) {
        varA = newVarA
    }
    
    func getFunctionStrategy() -> FunctionStrategy! {
        return functionStrategy
    }
    
    func setFunctionStrategy(_ newFunctionStrategy: FunctionStrategy!) {
        functionStrategy = newFunctionStrategy
    }
    
    
    func getVarB() -> String! {
        return varB
    }
    
    func setVarB(_ newVarB: String!) {
        varB = newVarB
    }
    
    func getResult() {
        
    }

}
