//
//  SwiftUINewArchitectureApp.swift
//  SwiftUINewArchitecture
//
//  Created by Jaime Jazareno III on 1/18/21.
//

import SwiftUI

@main
struct SwiftUINewArchitectureApp: App {
    let store = AppStore(initialState: .init(), reducer: appReducer, environment: World())

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
        }
    }
}
