//
//  AppetizerListViewModel.swift
//  Appetizer
//
//  Created by YURIY IZBASH on 18. 12. 24.
//

import Foundation

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
    func getAppetizers() {
        
        isLoading = true
        
        NetworkManager.shared.getAppetizers { result in
            
            DispatchQueue.main.async { [self] in
                
                isLoading = false
                
               switch result {
                   
                   case .success(let appetizers):
                    self.appetizers = appetizers
                   
                   case .failure(let error):
                   
                   switch error {
                       
                   case .invalidResponse:
                       alertItem = AlertContext.invalidResponse
                       
                   case .invalidURL:
                       alertItem = AlertContext.invalidURL
                       
                   case .unableToComplete:
                       alertItem = AlertContext.unableToComplete
                       
                   case .invalidData:
                       alertItem = AlertContext.invalidData
                   }
               }
            }
        }
    }
}
