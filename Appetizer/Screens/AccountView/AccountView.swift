//
//  AccountView.swift
//  Appetizer
//
//  Created by YURIY IZBASH on 15. 12. 24.
//

import SwiftUI

struct AccountView: View {
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var birthDate: Date = Date()
    @State private var extraNapkins = false
    @State private var frequentRefills = false
    
    var body: some View {
        NavigationView {
            Form {
                
                Section(header: Text("Account")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .autocorrectionDisabled(true)
                    DatePicker("Birth Date", selection: $birthDate, displayedComponents: .date)
                    Button {
                        print("Save")
                    } label: {
                        Text("Save Changes")
                    }
                }
                Section(header: Text("Request")) {
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                    Toggle("Frequent Refills", isOn: $frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
                .navigationTitle("Account")
        }
    }
}

#Preview {
    AccountView()
}
