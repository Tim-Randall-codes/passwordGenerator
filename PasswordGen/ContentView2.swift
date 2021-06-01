//
//  ContentView2.swift
//  PasswordGen
//
//  Created by Tim Randall on 30/5/21.
//

import SwiftUI

struct ContentView2: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        Text("Select Character Type:")
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2(viewRouter: ViewRouter())
    }
}
