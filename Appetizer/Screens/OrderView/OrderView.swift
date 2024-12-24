//
//  OrderView.swift
//  Appetizer
//
//  Created by YURIY IZBASH on 15. 12. 24.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(GroupedListStyle())
                
                
                Spacer()
                
                Button {
                    
                } label: {
                    APButton(title: "$ 30.93 - Place Order")
                }
            }
            .navigationTitle("Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}



#Preview {
    OrderView()
}
