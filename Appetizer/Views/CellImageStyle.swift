//
//  CellImageStyle.swift
//  Appetizer
//
//  Created by YURIY IZBASH on 25. 12. 24.
//

import SwiftUI


// Custom Modifier for Image Styling
struct CellImageStyle: ViewModifier {
    func body(content: Content) -> some View {
        // Assume the content is already an Image and apply the modifiers
        content
            .aspectRatio(contentMode: .fit)
            .frame(width: 120, height: 90)
            .cornerRadius(12)
    }
}

// Extend Image for Easy Usage
extension Image {
    func cellImageStyle() -> some View {
        self.resizable().modifier(CellImageStyle())
    }
}
