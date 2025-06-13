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

struct AppetizerResponse{
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer: Appetizer = Appetizer(id: 1,
                  name: "Crispy Calamari",
                  description: "Lightly breaded and fried calamari rings.",
                  price: 12.99,
                  imageURL: "",
                  calories: 250,
                  protein: 12,
                  carbs: 30)
    static let appetizers: [Appetizer] = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
