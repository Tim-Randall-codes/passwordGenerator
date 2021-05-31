//
//  MotherView.swift
//  PasswordGen
//
//  Created by Tim Randall on 30/5/21.
//

import SwiftUI

struct MotherView: View {
    //@State var currentPage: Page = .page2
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        switch viewRouter.currentPage {
        case .page1:
            ContentView(viewRouter: viewRouter)
        case .page2:
            ContentView2(viewRouter: viewRouter)
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter())
    }
}
