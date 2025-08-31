//
//  Order.swift
//  Appetizers-SwiftUI
//
//  Created by Radya Albasha on 31/08/2025.
//

import SwiftUI

final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    func add(_ item: Appetizer) {
        items.append(item)
    }
    
    func deleteItem(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
