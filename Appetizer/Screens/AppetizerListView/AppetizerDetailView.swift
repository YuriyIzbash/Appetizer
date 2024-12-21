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
                .scaledToFit()
                .frame(width: .infinity, height: 200)
            
            Text(appetizer.name)
                .font(.title    )
                .fontWeight(.semibold)
                .padding()
            
            Text(appetizer.description)
                .font(.title2)
                .padding()
            
            HStack(spacing: 30) {
                VStack(spacing: 8) {
                    Text("Calories")
                        .font(.title3)
                    Text("\(appetizer.calories)")
                }
                VStack(spacing: 8) {
                    Text("Carbs")
                        .font(.title3)
                    Text("\(appetizer.carbs)")
                }
                VStack(spacing: 8) {
                    Text("Protein")
                        .font(.title3)
                    Text("\(appetizer.protein)")
                }
                .padding()
            }
            Button {
                
            } label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
                    .font(.headline)
                    .frame(width: 280, height: 50)
                    .foregroundColor(.white)
                    .background(Color.brandPrimary)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding()
            }
        }
        
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(24)
        .shadow(radius: 40)
        .overlay(
            Button {
                isShowingDetail = false
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .opacity(0.6)
                    
                    Image(systemName: "xmark")
                        .imageScale(.small)
                        .frame(width: 44, height: 44)
                        .foregroundColor(.black)
                }
            }, alignment: .topTrailing)
    }
}


#Preview {
    AppetizerDetailView(isShowingDetail: .constant(true), appetizer: MockData.sampleAppetizer)
}
