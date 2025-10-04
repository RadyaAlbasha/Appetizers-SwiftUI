//
//  AppetrizerTabView.swift
//  Appetizers-SwiftUI
//
//  Created by Radya Albasha on 13/06/2025.
//

import SwiftUI

struct AppetrizerTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView{
            AppetrizerListView()
                .tabItem { Label("Home", systemImage: "house" ) }
            AccountView()
                .tabItem { Label("Account", systemImage: "person" ) }
            OrderView()
                .tabItem { Label("Order", systemImage: "bag" ) }
                .badge(order.items.count)
        }
//        .accentColor(.brandPrimary)
    }
}

#Preview {
    AppetrizerTabView()
}
