//
//  OrderView.swift
//  Appetizers-SwiftUI
//
//  Created by Radya Albasha on 13/06/2025.
//

import SwiftUI

struct OrderView: View {
    @State private var orderItems = MockData.orderItems
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    List{
                        ForEach(orderItems){ Appetizer in
                            AppetrizerListCell(appetizer: Appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        print("Place Order")
                    } label: {
                        APButton(title: "$99.99 Place Order")
                    }
                    .padding(.bottom, 25)
                }
                
                if orderItems.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
