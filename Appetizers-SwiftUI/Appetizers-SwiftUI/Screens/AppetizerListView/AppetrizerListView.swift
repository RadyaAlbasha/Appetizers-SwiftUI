//
//  AppetrizerListView.swift
//  Appetizers-SwiftUI
//
//  Created by Radya Albasha on 13/06/2025.
//

import SwiftUI

struct AppetrizerListView: View {
    
    @StateObject var viewModel: AppetrizerListViewModel = AppetrizerListViewModel()
    @State private var isShowingDetail: Bool = false
    @State private var selectedApptizer: Appetizer?
    
    var body: some View {
        ZStack{
            NavigationStack{
                //            List(MockData.appetizers)
                List(viewModel.appetizers) {appetizer in
                    AppetrizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            selectedApptizer = appetizer
                            isShowingDetail = true
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(isShowingDetail)
            }
            .onAppear() {
                viewModel.getAppetizers()
            }
            .blur(radius:  isShowingDetail ? 20 : 0)
            
            if isShowingDetail {
                AppetizerDetailView(appetizer: selectedApptizer!, isShowingDetail: $isShowingDetail)
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
