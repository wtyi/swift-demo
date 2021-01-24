//
//  apple_demoApp.swift
//  apple-demo
//
//  Created by 王天怡 on 2021/1/21.
//

import SwiftUI

@main
struct apple_demoApp: App {
    @StateObject private var modelData:ModelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
