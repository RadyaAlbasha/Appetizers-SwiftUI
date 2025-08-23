//
//  AppetrizerListViewModel.swift
//  Appetizers-SwiftUI
//
//  Created by Radya Albasha on 20/07/2025.
//

import Combine
final class AppetrizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers {[self] result in
            Task{ @MainActor in
                isLoading = false
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print("Error: \(error.localizedDescription)")
                    switch error {
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
