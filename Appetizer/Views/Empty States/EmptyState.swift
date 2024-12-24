//
//  EmptyState.swift
//  Appetizer
//
//  Created by YURIY IZBASH on 24. 12. 24.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                Text(message)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "L!!!!osdagfg adfgdsg sfdgsdfg sdfgsdfgsd sdfgsdfgds sdfgsd!!!@ sdfgsdg!!!!!! ")
}
