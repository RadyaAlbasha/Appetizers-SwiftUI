//
//  OrderView.swift
//  Appetizers-SwiftUI
//
//  Created by Radya Albasha on 13/06/2025.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items){ Appetizer in
                            AppetrizerListCell(appetizer: Appetizer)
                        }
                        .onDelete(perform: order.deleteItem)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        print("Place Order")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") Place Order")
                    }
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
}

#Preview {
    OrderView()
}
