//
//  AccountViewModel.swift
//  Appetizer
//
//  Created by YURIY IZBASH on 22. 12. 24.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var birthDate: Date = Date()
    @Published var extraNapkins = false
    @Published var frequentRefills = false
    @Published var alertItem: AlertItem?
    
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
    guard email.isValidEmail else {
        alertItem = AlertContext.invalidEmail
        return false
    }
    
    return true
}
func saveChanges() {
    guard isValidForm else { return }
    
    print("Changes have been saved successfully")
    }
}
