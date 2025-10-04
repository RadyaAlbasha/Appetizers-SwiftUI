//
//  CustomModifiers.swift
//  Appetizers-SwiftUI
//
//  Created by Radya Albasha on 04/10/2025.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier { //usage -> .modifier(StateButtonStyle())
    
    func body(content: Content) -> some View {
        content
        .buttonStyle(.bordered)
        .tint(.brandPrimary)
        .controlSize(.large)
    }
}


extension View {
    public func standardButtonStyle() -> some View { //usage -> .standardButtonStyle()
        self.modifier(StandardButtonStyle())
    }
}
