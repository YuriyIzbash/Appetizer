//
//  Alert.swift
//  Appetizer
//
//  Created by YURIY IZBASH on 18. 12. 24.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    static let invalidData = AlertItem(title: Text("Server Error"), message: Text("Invalid data from the server. Please contact support"), dismissButton: .default(Text("OK")))
                                   
    static let invalidResponse = AlertItem(title: Text("Server Error"), message: Text("Invalid response from the server. Please try again later or contact support"), dismissButton: .default(Text("OK")))
                                   
    static let invalidURL = AlertItem(title: Text("Server Error"), message: Text("There was an issue connecting to the server. Please try again later or contact support"), dismissButton: .default(Text("OK")))
                                   
    static let unableToComplete = AlertItem(title: Text("Server Error"), message: Text("Unable to complete request. Please try again later or contact support"), dismissButton: .default(Text("OK")))
}
