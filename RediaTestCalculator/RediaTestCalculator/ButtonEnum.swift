//
//  ButtonEnum.swift
//  RediaTestCalculator
//
//  Created by anders on 13/01/2019.
//  Copyright © 2019 ASVGames. All rights reserved.
//

import Foundation

enum ButtonEnum {
    case number(Int)
    case plus
    case minus
    case times
    case dividedBy
    case enter
    case clear
    
    static func convertToButtonEnum(_ buttonId: String) -> ButtonEnum {
        switch buttonId {
        case "0":
            return ButtonEnum.number(0)
        case "1":
            return ButtonEnum.number(1)
        case "2":
            return ButtonEnum.number(2)
        case "3":
            return ButtonEnum.number(3)
        case "4":
            return ButtonEnum.number(4)
        case "5":
            return ButtonEnum.number(5)
        case "6":
            return ButtonEnum.number(6)
        case "7":
            return ButtonEnum.number(7)
        case "8":
            return ButtonEnum.number(8)
        case "9":
            return ButtonEnum.number(9)
        case "plus":
            return ButtonEnum.plus
        case "minus":
            return ButtonEnum.minus
        case "times":
            return ButtonEnum.times
        case "dividedBy":
            return ButtonEnum.dividedBy
        case "enter":
            return ButtonEnum.enter
        case "clear":
            return ButtonEnum.clear
        default:
            return ButtonEnum.clear
        }
        
    }
}
