//
//  Appetizer.swift
//  Appetizer
//
//  Created by YURIY IZBASH on 15. 12. 24.
//

import Foundation

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

struct AppetizerResponse {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer =
            Appetizer(id: 1,
                      name: "Pizza Margarita",
                      description: "Pizza description",
                      price: 100,
                      imageURL: "food",
                      calories: 100,
                      protein: 100,
                      carbs: 100)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
