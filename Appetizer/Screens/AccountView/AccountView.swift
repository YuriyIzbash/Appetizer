//
//  AccountView.swift
//  Appetizer
//
//  Created by YURIY IZBASH on 15. 12. 24.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel =  AccountViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Account")) {
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .autocorrectionDisabled(true)
                    DatePicker("Birth Date", selection: $viewModel.user.birthDate, displayedComponents: .date)
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }
                Section(header: Text("Request")) {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
                .navigationTitle("Account")
        }
        .onAppear {
            viewModel.retriveUser()
        }
        .alert(item:$viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
