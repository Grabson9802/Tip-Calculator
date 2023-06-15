//
//  ContentViewPage.swift
//  TipCalculatorUITests
//
//  Created by Krystian Grabowy on 15/06/2023.
//

import Foundation
import XCTest

class ContentViewPage {
    
    var app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    var totalTextField: XCUIElement {
        app.textFields["totalTextField"]
    }
    
    var calculateTipButton: XCUIElement {
        app.buttons["calculateTipButton"]
    }
    
    var tipPercentageSegmentedControl: XCUIElement {
        app.segmentedControls["tipPercentageSegmentedControl"]
    }
    
    var messageText: XCUIElement {
        app.staticTexts["messageText"]
    }
    
    var tipText: XCUIElement {
        app.staticTexts["tipText"]
    }
}
