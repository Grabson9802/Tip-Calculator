//
//  TipCalculatorUnitTests.swift
//  TipCalculatorUnitTests
//
//  Created by Krystian Grabowy on 15/06/2023.
//

import XCTest

final class when_calculating_tip_based_on_total_amount: XCTestCase {
    
    func test_should_calculate_successfully() {
        
        let tipCalculator = TipCalculator()
        let tip = try! tipCalculator.calculate(total: 100, tipPercentage: 0.1)
        
        XCTAssertEqual(tip, 10)
    }
}

final class when_calculating_tip_based_on_negative_total_amount: XCTestCase {
    
    func test_should_throw_invalid_input_exception() {
        
        let tipCalculator = TipCalculator()
        
        XCTAssertThrowsError(try tipCalculator.calculate(total: -100, tipPercentage: 0.1), "") { error in
            
            XCTAssertEqual(error as! TipCalculatorError, TipCalculatorError.invalidInput)
        }
    }
}
