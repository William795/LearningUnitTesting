//
//  Student.swift
//  LearningUnitTesting
//
//  Created by William Moody on 10/30/19.
//  Copyright © 2019 William Moody. All rights reserved.
//

import Foundation

class Student {
    
    let firstName: String
    let lastName: String
    
    var friends: [Student] = []
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func addFriend(friend: Student) {
        friends.append(friend)
    }
    
    func validFirstName() -> Bool {
        return firstName.count > 3
    }
    
    func validLastName() -> Bool {
        return lastName.count > 3
    }
}
