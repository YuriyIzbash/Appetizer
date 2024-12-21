//
//  APButton.swift
//  Appetizer
//
//  Created by YURIY IZBASH on 21. 12. 24.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.headline)
            .frame(width: 280, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.bottom)
    }
}

#Preview {
    APButton(title: "Test")
}
