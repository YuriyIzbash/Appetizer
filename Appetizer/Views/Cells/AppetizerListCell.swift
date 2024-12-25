//
//  AppetizerListCell.swift
//  Appetizer
//
//  Created by YURIY IZBASH on 17. 12. 24.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
            AppetizerRemoteImage( urlString: appetizer.imageURL)
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .frame(width: 120, height: 90)
//            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
//                image
//                    .cellImageStyle()
//            } placeholder: {
//                Image("food-placeholder")
//                    .cellImageStyle()
//            }

            VStack(alignment: .leading, spacing: 8) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    
                    Text("$ \(appetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
