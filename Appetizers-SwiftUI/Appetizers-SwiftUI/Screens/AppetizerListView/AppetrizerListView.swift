//
//  AppetrizerListView.swift
//  Appetizers-SwiftUI
//
//  Created by Radya Albasha on 13/06/2025.
//

import SwiftUI

struct AppetrizerListView: View {
    
    @StateObject var viewModel: AppetrizerListViewModel = AppetrizerListViewModel()
    
    var body: some View {
        ZStack{
            NavigationStack{
                //            List(MockData.appetizers)
                List(viewModel.appetizers) {appetizer in
                    AppetrizerListCell(appetizer: appetizer)
                }
                .navigationTitle("🍟 Appetizers")
            }
            .onAppear() {
                viewModel.getAppetizers()
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetrizerListView()
}
