//
//  APButton.swift
//  Appetizers-SwiftUI
//
//  Created by Radya Albasha on 26/08/2025.
//

import SwiftUI

public struct APButton: View {
    let title: LocalizedStringKey
    
    public var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundStyle(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}


#Preview {
    APButton(title: "test title")
}

