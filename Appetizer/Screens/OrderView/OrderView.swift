//
//  OrderView.swift
//  Appetizer
//
//  Created by YURIY IZBASH on 15. 12. 24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(GroupedListStyle())
                    
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order. \nPlease add some appetizers.")
                }
            }
            .navigationTitle("Orders")
        }
    }
}



#Preview {
    OrderView().environmentObject(Order())
}
