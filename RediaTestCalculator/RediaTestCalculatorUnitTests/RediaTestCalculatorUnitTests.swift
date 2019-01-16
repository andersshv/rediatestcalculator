//
//  RediaTestCalculatorUnitTests.swift
//  RediaTestCalculatorUnitTests
//
//  Created by anders on 12/01/2019.
//  Copyright © 2019 ASVGames. All rights reserved.
//

import XCTest
@testable import RediaTestCalculator

class RediaTestCalculatorUnitTests: XCTestCase {
    
    var sg: StringGenerator!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sg = StringGenerator()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // *** -0??? ***
    
    // *** Scientific notation ***
    // For numbers greater than 999.999.999 use e-notation
    // Same for less than -999.999.999
    // Or f.ex. -1e-30
    // Or f.ex. 1e-30
    
    // *** Comma ***
    
    // *** Sign ***
    
    // *** Maximum number of decimals in display ***
    // Max 9 decimals (not counting comma) for both variables and for result
//    func test9999999999Gives999999999() {
//        sg.buttonClicked(ButtonEnum.number(9))
//        sg.buttonClicked(ButtonEnum.number(9))
//        sg.buttonClicked(ButtonEnum.number(9))
//        sg.buttonClicked(ButtonEnum.number(9))
//        sg.buttonClicked(ButtonEnum.number(9))
//        sg.buttonClicked(ButtonEnum.number(9))
//        sg.buttonClicked(ButtonEnum.number(9))
//        sg.buttonClicked(ButtonEnum.number(9))
//        sg.buttonClicked(ButtonEnum.number(9))
//        sg.buttonClicked(ButtonEnum.number(9))
//        let testVal = sg.getText()
//        XCTAssertTrue(testVal == "999999999")
//    }
    
//    func test1Plus1111111119Gives111111111() {
//        sg.buttonClicked(ButtonEnum.number(1))
//        sg.buttonClicked(ButtonEnum.plus)
//        sg.buttonClicked(ButtonEnum.number(1))
//        sg.buttonClicked(ButtonEnum.number(1))
//        sg.buttonClicked(ButtonEnum.number(1))
//        sg.buttonClicked(ButtonEnum.number(1))
//        sg.buttonClicked(ButtonEnum.number(1))
//        sg.buttonClicked(ButtonEnum.number(1))
//        sg.buttonClicked(ButtonEnum.number(1))
//        sg.buttonClicked(ButtonEnum.number(1))
//        sg.buttonClicked(ButtonEnum.number(1))
//        sg.buttonClicked(ButtonEnum.number(9))
//        let testVal = sg.getText()
//        XCTAssertTrue(testVal == "111111111")
//    }
    
//    func test999999999Plus1Gives1EPlus10() {
//        sg.buttonClicked(ButtonEnum.number(9))
//        sg.buttonClicked(ButtonEnum.number(9))
//        sg.buttonClicked(ButtonEnum.number(9))
//        sg.buttonClicked(ButtonEnum.number(9))
//        sg.buttonClicked(ButtonEnum.number(9))
//        sg.buttonClicked(ButtonEnum.number(9))
//        sg.buttonClicked(ButtonEnum.number(9))
//        sg.buttonClicked(ButtonEnum.number(9))
//        sg.buttonClicked(ButtonEnum.number(9))
//        sg.buttonClicked(ButtonEnum.plus)
//        sg.buttonClicked(ButtonEnum.number(1))
//        sg.buttonClicked(ButtonEnum.enter)
//        let testVal = sg.getText()
//        XCTAssertTrue(testVal == "1e+10")
//    }
    
//    func test1Div3Gives0Point33333333() {
//        sg.buttonClicked(ButtonEnum.number(1))
//        sg.buttonClicked(ButtonEnum.dividedBy)
//        sg.buttonClicked(ButtonEnum.number(3))
//        sg.buttonClicked(ButtonEnum.enter)
//        let testVal = sg.getText()
//        XCTAssertTrue(testVal == "0.33333333")
//    }
    
    // Max 9 decimals, one sign and one comma, for both variables
    
    // If Result is greater than 999.999.999 then display should use nearest 1E10
    
    func test2Div0Plus2EnterGivesError() {
        sg.buttonClicked(ButtonEnum.number(2))
        sg.buttonClicked(ButtonEnum.dividedBy)
        sg.buttonClicked(ButtonEnum.number(0))
        sg.buttonClicked(ButtonEnum.plus)
        sg.buttonClicked(ButtonEnum.number(2))
        sg.buttonClicked(ButtonEnum.enter)
        let testVal = sg.getText()
        XCTAssertTrue(testVal == "2")
    }
    
    func testMinus3DividedBy0Plus1GivesError() {
        sg.buttonClicked(ButtonEnum.number(-3))
        sg.buttonClicked(ButtonEnum.dividedBy)
        sg.buttonClicked(ButtonEnum.number(0))
        sg.buttonClicked(ButtonEnum.enter)
        sg.buttonClicked(ButtonEnum.number(1))
        let testVal = sg.getText()
        XCTAssertTrue(testVal == "1")
    }
    
    func testMinus3DividedBy0GivesError() {
        sg.buttonClicked(ButtonEnum.number(-3))
        sg.buttonClicked(ButtonEnum.dividedBy)
        sg.buttonClicked(ButtonEnum.number(0))
        sg.buttonClicked(ButtonEnum.enter)
        let testVal = sg.getText()
        XCTAssertTrue(testVal == "Error")
    }
    
    func test3DividedBy0GivesError() {
        sg.buttonClicked(ButtonEnum.number(3))
        sg.buttonClicked(ButtonEnum.dividedBy)
        sg.buttonClicked(ButtonEnum.number(0))
        sg.buttonClicked(ButtonEnum.enter)
        let testVal = sg.getText()
        XCTAssertTrue(testVal == "Error")
    }
    
    func test3DividedBy03Gives1() {
        sg.buttonClicked(ButtonEnum.number(3))
        sg.buttonClicked(ButtonEnum.dividedBy)
        sg.buttonClicked(ButtonEnum.number(0))
        sg.buttonClicked(ButtonEnum.number(3))
        sg.buttonClicked(ButtonEnum.enter)
        let testVal = sg.getText()
        XCTAssertTrue(testVal == "1")
    }
    
    func test3DividedBy3Gives1() {
        sg.buttonClicked(ButtonEnum.number(3))
        sg.buttonClicked(ButtonEnum.dividedBy)
        sg.buttonClicked(ButtonEnum.number(3))
        sg.buttonClicked(ButtonEnum.enter)
        let testVal = sg.getText()
        XCTAssertTrue(testVal == "1")
    }
    
    func test3Times3Gives9() {
        sg.buttonClicked(ButtonEnum.number(3))
        sg.buttonClicked(ButtonEnum.times)
        sg.buttonClicked(ButtonEnum.number(3))
        sg.buttonClicked(ButtonEnum.enter)
        let testVal = sg.getText()
        XCTAssertTrue(testVal == "9")
    }
    
    func testBtn3Enter3GivesString33() {
        sg.buttonClicked(ButtonEnum.number(3))
        sg.buttonClicked(ButtonEnum.enter)
        sg.buttonClicked(ButtonEnum.number(3))
        let testVal = sg.getText()
        XCTAssertTrue(testVal == "33")
    }
    
    func testBtn3Minus1Enter1GivesString1() {
        sg.buttonClicked(ButtonEnum.number(3))
        sg.buttonClicked(ButtonEnum.minus)
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.enter)
        sg.buttonClicked(ButtonEnum.number(1))
        let testVal = sg.getText()
        XCTAssertTrue(testVal == "1")
    }
    
    func testBtn1Minus1GivesString0() {
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.minus)
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.enter)
        let testVal = sg.getText()
        XCTAssertTrue(testVal == "0")
    }
    
    func testBtn1Plus1EnterClearGivesString0() {
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.plus)
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.enter)
        sg.buttonClicked(ButtonEnum.clear)
        let testVal = sg.getText()
        XCTAssertTrue(testVal == "0")
    }
    
    func testBtn1Plus1EnterGivesString2() {
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.plus)
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.enter)
        let testVal = sg.getText()
        XCTAssertTrue(testVal == "2")
    }
    
    func testBtn1Plus1Plus1PlusGivesString3() {
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.plus)
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.plus)
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.plus)
        let testVal = sg.getText()
        XCTAssertTrue(testVal == "3")
    }
    
    func testBtn1Plus1Plus1GivesString1() {
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.plus)
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.plus)
        sg.buttonClicked(ButtonEnum.number(1))
        let testVal = sg.getText()
        XCTAssertTrue(testVal == "1")
    }
    
    func testBtn1Plus1PlusGivesString2() {
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.plus)
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.plus)
        let testVal = sg.getText()
        XCTAssertTrue(testVal == "2")
    }
    
    func testBtn1Plus000GivesString0() {
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.plus)
        sg.buttonClicked(ButtonEnum.number(0))
        sg.buttonClicked(ButtonEnum.number(0))
        sg.buttonClicked(ButtonEnum.number(0))
        XCTAssertTrue(sg.getText() == "0")
    }
    
    func testBtn000GivesString0() {
        sg.buttonClicked(ButtonEnum.number(0))
        sg.buttonClicked(ButtonEnum.number(0))
        sg.buttonClicked(ButtonEnum.number(0))
        XCTAssertTrue(sg.getText() == "0")
    }
    
    func testBtn1Plus07GivesString7() {
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.plus)
        sg.buttonClicked(ButtonEnum.number(0))
        sg.buttonClicked(ButtonEnum.number(7))
        XCTAssertTrue(sg.getText() == "7")
    }
    
    func testBtn1Plus0GivesString0() {
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.plus)
        sg.buttonClicked(ButtonEnum.number(0))
        XCTAssertTrue(sg.getText() == "0")
    }
    
    func testBtn1Plus7GivesString7() {
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.plus)
        sg.buttonClicked(ButtonEnum.number(7))
        XCTAssertTrue(sg.getText() == "7")
    }
    
    func testBtn17PlusGivesString17() {
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.number(7))
        sg.buttonClicked(ButtonEnum.plus)
        XCTAssertTrue(sg.getText() == "17")
    }
    
    func testBtn1PlusGivesString1() {
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.plus)
        XCTAssertTrue(sg.getText() == "1")
    }
    
    func testBtn12GivesString12() {
        sg.buttonClicked(ButtonEnum.number(1))
        sg.buttonClicked(ButtonEnum.number(2))
        XCTAssertTrue(sg.getText() == "12")
    }
    
    func testBtn1GivesString1() {
        sg.buttonClicked(ButtonEnum.number(1))
        XCTAssertTrue(sg.getText() == "1")
    }

    func testFreshSGGivesString0() {
        XCTAssertTrue(sg.getText() == "0")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
