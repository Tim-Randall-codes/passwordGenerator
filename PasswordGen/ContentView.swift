//
//  ContentView.swift
//  PasswordGen
//
//  Created by Tim Randall on 30/5/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    @State var word: String = ""
    @State var selector: Int = 4
    var body: some View {
        VStack {
            Text("PasswordGen")
                .padding()
            Text(xer(txt: word))
                .padding()
            Button("Generate", action: {
                if selector == 0 {
                    word = lowerCase()
                }
                else if selector == 1 {
                    word = lowerNum()
                }
                else if selector == 2 {
                    word = lowerUpNum()
                }
                else {
                    word = allchar()
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
