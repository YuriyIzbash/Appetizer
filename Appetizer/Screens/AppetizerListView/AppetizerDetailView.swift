//
//  AppetizerDetailView.swift
//  Appetizer
//
//  Created by YURIY IZBASH on 21. 12. 24.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @Binding var isShowingDetail: Bool
    
    let appetizer: Appetizer
    
    var body: some View {
        VStack {
            AppetizerRemoteImage( urlString: appetizer.imageURL)
                .scaledToFill()
                .frame(width: 320, height: 230)
                .padding(.bottom)
            
            Text(appetizer.name)
                .font(.title    )
                .fontWeight(.semibold)
                .padding()
            
            Text(appetizer.description)
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                
            
            HStack {
                
                NutritionInfo(title: "Calories", value: appetizer.calories)
            
                NutritionInfo(title: "Carbs", value: appetizer.carbs)
                
                NutritionInfo(title: "Protein", value: appetizer.protein)
            }
            .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
        }
        
        .frame(width: 320, height: 540)
        .background(Color(.systemBackground))
        .cornerRadius(24)
        .shadow(radius: 40)
        .overlay(
            Button {
                isShowingDetail = false
            } label: {
                XDismissButton()
            }, alignment: .topTrailing)
    }
}


#Preview {
    AppetizerDetailView(isShowingDetail: .constant(true), appetizer: MockData.sampleAppetizer)
}

struct NutritionInfo: View {
    
    let title: String
    let value: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Text(title)
                .font(.title3)
            Text("\(value)")
        }
        .frame(width: 80)
    }
}
