//
//  Calculator2Tests.swift
//  Calculator2Tests
//
//  Created by student on 03/10/2023.
//

import XCTest
@testable import Calculator2

final class Calculator2Tests: XCTestCase {
    func testPositiveScenarioForAddCalculation() throws {
        XCTAssertEqual(Calculation().addTwoInt(of: "1", with: "1"),2)
    }
    func testNegativeScenarioForAddCalculation() throws {
        XCTAssertEqual(Calculation().addTwoInt(of: "1", with: "-2"),-1)
    }
    func testPositiveScenarioForSubCalculation() throws {
        XCTAssertEqual(Calculation().subtractTwoInt(of: "2", with: "1"),1)
    }
    func testNegativeScenarioForSubCalculation() throws {
        XCTAssertEqual(Calculation().subtractTwoInt(of: "1", with: "2"),-1)
    }
    func testPositiveScenarioForProdCalculation() throws {
        XCTAssertEqual(Calculation().multiplyTwoInt(of: "2", with: "2"),4)
    }
    func testNegativeScenarioForProdCalculation() throws {
        XCTAssertEqual(Calculation().multiplyTwoInt(of: "1", with: "-1"),-1)
    }
    func testPositiveScenarioForDivCalculation() throws {
        XCTAssertEqual(Calculation().divideTwoInt(of: "4", with: "2"),2)
    }
    func testZeroScenarioForDivCalculation() throws {
        XCTAssertEqual(Calculation().divideTwoInt(of: "1", with: "0"),Double.greatestFiniteMagnitude)
    }
    func testPositiveScenarioForSinCalculation() throws {
        XCTAssertEqual(Calculation().sinInt(of: "1"),sin(1))
    }
}
