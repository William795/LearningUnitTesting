//
//  StudentTests.swift
//  LearningUnitTestingTests
//
//  Created by William Moody on 10/30/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

import Foundation
import XCTest
@testable import LearningUnitTesting

class StudentTests: XCTestCase {
    
    func testInvalidFirstName() {
        
        let student = Student(firstName: "AJ", lastName: "test")
        
        XCTAssertFalse(student.validFirstName())
    }
    
    func testValidLastName() {
        
        let student = Student(firstName: "AJ", lastName: "test")
        
        XCTAssertTrue(student.validLastName())
    }
    
    func testAddFriend() {
        let student = Student(firstName: "AJ", lastName: "test")
        let friend = Student(firstName: "Tom", lastName: "TestTwo")
        
        XCTAssertTrue(student.friends.count == 0)
        
        student.addFriend(friend: friend)
        
        XCTAssertTrue(student.friends.count == 1)
    }
}
