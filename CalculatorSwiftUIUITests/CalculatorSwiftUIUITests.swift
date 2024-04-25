//
//  CalculatorSwiftUIUITests.swift
//  CalculatorSwiftUIUITests
//
//  Created by Hetal Mehta on 23/04/24.
//

import XCTest

final class CalculatorSwiftUIUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
    /*
     This function will test UI of all digit from 0 to 9
     */
    func testUIForAllDigitButton() {
        
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        for Index in 0...9 {
            let digit = app.buttons["\(Index)"]
            XCTAssertEqual(digit.label, "\(Index)")
        }
    }
    
    /*
     This function will test UI of all airthmatic operation
     */
    func testUIForAllAirthmaticButton() {
        
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        for Index in 11...15 {
            let operation = app.buttons["\(Index)"]
            switch Index {
            case 11:
                XCTAssertEqual(operation.label, "+")
            case 12:
                XCTAssertEqual(operation.label, "−")
            case 13:
                XCTAssertEqual(operation.label, "×")
            case 14:
                XCTAssertEqual(operation.label, "÷")
            default:
                XCTAssertEqual(operation.label, "=")
            }
        }
    }
}
