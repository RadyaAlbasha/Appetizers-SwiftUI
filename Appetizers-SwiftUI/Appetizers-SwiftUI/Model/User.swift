//
//  User.swift
//  Appetizers-SwiftUI
//
//  Created by Radya Albasha on 31/08/2025.
//

import Foundation

struct User: Codable{
    var firstName: String      = ""
    var lastName: String       = ""
    var email: String          = ""
    var birthDate: Date        = Date()
    var extraNapkins: Bool     = false
    var frequentRefilles: Bool = false
}
