//
//  Appetizer.swift
//  Appetizers-SwiftUI
//
//  Created by Radya Albasha on 13/06/2025.
//

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer: Appetizer = Appetizer(id: 0001,
                  name: "Crispy Calamari",
                  description: "Lightly breaded and fried calamari rings.",
                  price: 12.99,
                  imageURL: "",
                  calories: 250,
                  protein: 12,
                  carbs: 30)
    static let appetizers: [Appetizer] = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne: Appetizer = Appetizer(id: 0001,
                  name: "Crispy Calamari one",
                  description: "Lightly breaded and fried calamari rings.",
                  price: 12.99,
                  imageURL: "",
                  calories: 250,
                  protein: 12,
                  carbs: 30)
    
    static let orderItemTwo: Appetizer = Appetizer(id: 0002,
                  name: "Crispy Calamari two",
                  description: "Lightly breaded and fried calamari rings.",
                  price: 12.99,
                  imageURL: "",
                  calories: 250,
                  protein: 12,
                  carbs: 30)
    
    static let orderItemThree: Appetizer = Appetizer(id: 0003,
                  name: "Crispy Calamari three",
                  description: "Lightly breaded and fried calamari rings.",
                  price: 12.99,
                  imageURL: "",
                  calories: 250,
                  protein: 12,
                  carbs: 30)
    static let orderItems: [Appetizer] = [orderItemOne, orderItemTwo, orderItemThree] 
}
