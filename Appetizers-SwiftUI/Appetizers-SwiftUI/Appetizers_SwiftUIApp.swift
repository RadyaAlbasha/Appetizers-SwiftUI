//
//  Appetizers_SwiftUIApp.swift
//  Appetizers-SwiftUI
//
//  Created by Radya Albasha on 13/06/2025.
//

import SwiftUI

@main
struct Appetizers_SwiftUIApp: App {
    var order: Order = Order()
    var body: some Scene {
        WindowGroup {
            AppetrizerTabView().environmentObject(order) //all childes of this view has access on the order enviroment object
        }
    }
}
