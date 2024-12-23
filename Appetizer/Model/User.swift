//
//  User.swift
//  Appetizer
//
//  Created by YURIY IZBASH on 23. 12. 24.
//

import Foundation

struct User: Codable {
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var birthDate: Date = Date()
    var extraNapkins = false
    var frequentRefills = false
}
