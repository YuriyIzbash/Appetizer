//
//  ContentView.swift
//  Appetizer
//
//  Created by YURIY IZBASH on 15. 12. 24.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
        }
    }
}

#Preview {
    AppetizerTabView()
}
