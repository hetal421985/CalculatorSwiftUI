//
//  CalculatorSwiftUITests.swift
//  CalculatorSwiftUITests
//
//  Created by Hetal Mehta on 23/04/24.
//

import XCTest
@testable import CalculatorSwiftUI

final class CalculatorSwiftUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    /*
     This function will test addtion arithmatic operation for single digit number
     */

    func testAdditionArithmaticOperationForSingleDigitNumber() throws {
        
        // 1 Equation 1 + 4 = 5
        let  expected = "5"
        /// Digit 1  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 1)
        /// Plus Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 11)
        /// Digit 4 Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 4)
        /// Equal Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 15)
        // Assert
        XCTAssertEqual(CalculatorData.sharedInstance.resultString, expected, "Test faild.")
        
    }
    
    /*
     This function will test addtion arithmatic operation for 2,3 digit number
     */

    func testAdditionArithmaticOperationTwoOrThreeDigitNumber() throws {
        
        // 1 Equation 115 + 422
        let  expected = "537"
        /// Digit 1  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 1)
        /// Digit 1  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 1)
        /// Digit 5  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 5)
        /// Plus Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 11)
        /// Digit 4 Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 4)
        /// Digit 2 Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 2)
        /// Digit 2 Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 2)
        /// Equal Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 15)
        // Assert
        XCTAssertEqual(CalculatorData.sharedInstance.resultString, expected, "Test faild.")
    }
    
    /*
     This function will test substration arithmatic operation for single digit number
     */

    func testSubstractionArithmaticOperationForSingleDigitNumber() throws {
        
        // 1 Equation 6 - 7 = -1
        let  expected = "-1"
        /// Digit 6  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 6)
        /// Minus Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 12)
        /// Digit 7 Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 7)
        /// Equal Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 15)
        // Assert
        XCTAssertEqual(CalculatorData.sharedInstance.resultString, expected, "Test faild.")
        
    }
    
    /*
     This function will test substration arithmatic operation for 2,3 digit number
     */

    func testSubstrationArithmaticOperationTwoOrThreeDigitNumber() throws {
        
        // 1 Equation 115 - 422
        let  expected = "-307"
        /// Digit 1  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 1)
        /// Digit 1  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 1)
        /// Digit 5  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 5)
        /// Minus Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 12)
        /// Digit 4 Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 4)
        /// Digit 2 Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 2)
        /// Digit 2 Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 2)
        /// Equal Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 15)
        // Assert
        XCTAssertEqual(CalculatorData.sharedInstance.resultString, expected, "Test faild.")
    }
    
    /*
     This function will test multiplication arithmatic operation for single digit number
     */

    func testMultiplicationArithmaticOperationForSingleDigitNumber() throws {
        
        // 1 Equation 6 * 7 = 42
        let  expected = "42"
        /// Digit 6  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 6)
        /// Multiplication Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 13)
        /// Digit 7 Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 7)
        /// Equal Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 15)
        // Assert
        XCTAssertEqual(CalculatorData.sharedInstance.resultString, expected, "Test faild.")
    }
    
    /*
     This function will test multiplication arithmatic operation for 2,3 digit number
     */

    func testMultiplicationArithmaticOperationForTwoOrThreeDigitNumber() throws {
        
        // 1 Equation 62 * 722 = 42
        let  expected = "44764"
        /// Digit 6  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 6)
        /// Digit 2  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 2)
        /// Multiplication Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 13)
        /// Digit 7 Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 7)
        /// Digit 2  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 2)
        /// Digit 2  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 2)
        /// Equal Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 15)
        // Assert
        XCTAssertEqual(CalculatorData.sharedInstance.resultString, expected, "Test faild.")
        
    }
    
    /*
     This function will test division arithmatic operation for single digit number
     */

    func testDivisionArithmaticOperationForSingleDigitNumber() throws {
        
        // 1 Equation 6 / 3 = 2
        let  expected = "2"
        /// Digit 6  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 6)
        /// Division Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 14)
        /// Digit 3 Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 3)
        /// Equal Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 15)
        // Assert
        XCTAssertEqual(CalculatorData.sharedInstance.resultString, expected, "Test faild.")
    }
    
    /*
     This function will test multiplication arithmatic operation for 2,3 digit number
     */

    func testDivsionArithmaticOperationForTwoOrThreeDigitNumber() throws {
        
        // 1 Equation 121 / 11 = 11
        let  expected = "11"
        /// Digit 1  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 1)
        /// Digit 2  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 2)
        /// Digit 1  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 1)
        /// Divsion Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 14)
        /// Digit 1  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 1)
        /// Digit 1  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 1)
        /// Equal Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 15)
        // Assert
        XCTAssertEqual(CalculatorData.sharedInstance.resultString, expected, "Test faild.")
        
    }
    
    /*
     This function will test all arithmatic operation for all digit number
     */

    func testAllArithmaticOperationForNumber() throws {
        
        // 1 Equation 121*11+100-234/23 = 1421
        let  expected = "1421"
        /// Digit 1  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 1)
        /// Digit 2  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 2)
        /// Digit 1  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 1)
        /// Multiplication Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 13)
        /// Digit 1  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 1)
        /// Digit 1  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 1)
        /// Addition Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 11)
        /// Digit 1  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 1)
        /// Digit 0  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 0)
        /// Digit 0  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 0)
        /// Substration Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 12)
        /// Digit 2  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 2)
        /// Digit 3  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 3)
        /// Digit 4  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 4)
        /// Division Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 14)
        /// Digit 2  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 2)
        /// Digit 3  Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 3)
        /// Equal Pressed
        CalculatorData.sharedInstance.getCalculatedResult(id: 15)
        // Assert
        XCTAssertEqual(CalculatorData.sharedInstance.resultString, expected, "Test faild.")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    
}
