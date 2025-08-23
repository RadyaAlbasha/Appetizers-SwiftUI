//
//  LoadingView.swift
//  Appetizers-SwiftUI
//
//  Created by Radya Albasha on 24/07/2025.
//

import SwiftUI

public struct ActivityIndicator: UIViewRepresentable {
    public func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndicatorView = UIActivityIndicatorView(style:
                .large)
        activityIndicatorView.color = UIColor.brandPrimary
        activityIndicatorView.startAnimating()
        return activityIndicatorView
    }
    
    public func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(edges: .all)
             
            ActivityIndicator()
        }
    }
}
