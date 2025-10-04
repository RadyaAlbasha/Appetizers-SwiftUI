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
                List(MockData.orderItems)
//                List(viewModel.appetizers)
                {appetizer in
                    AppetrizerListCell(appetizer: appetizer)
//                        .listRowSeparator(.hidden)
//                        .listRowSeparatorTint(.brandPrimary)
                        .onTapGesture {
                            viewModel.selectedApptizer = appetizer
                            viewModel.isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .listStyle(.plain)
                .disabled(viewModel.isShowingDetail)
            }
            .onAppear() {
                viewModel.getAppetizers()
            }
            .blur(radius:  viewModel.isShowingDetail ? 20 : 0)
            
            if viewModel.isShowingDetail {
                AppetizerDetailView(appetizer: viewModel.selectedApptizer!, isShowingDetail: $viewModel.isShowingDetail)
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
