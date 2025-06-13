//
//  AppetrizerListView.swift
//  Appetizers-SwiftUI
//
//  Created by Radya Albasha on 13/06/2025.
//

import SwiftUI

struct AppetrizerListView: View {
    var body: some View {
        NavigationStack{
            List(MockData.appetizers) {appetizer in
                AppetrizerListCell(appetizer: appetizer)
            }
            
        }
        .navigationTitle("🍟 Appetizers")
    }
}

#Preview {
    AppetrizerListView()
}
