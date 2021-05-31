//
//  PasswordGenApp.swift
//  PasswordGen
//
//  Created by Tim Randall on 30/5/21.
//

import SwiftUI

@main
struct PasswordGenApp: App {
    @StateObject var viewRouter = ViewRouter()
    var body: some Scene {
        WindowGroup {
            MotherView(viewRouter: viewRouter)
        }
    }
}
