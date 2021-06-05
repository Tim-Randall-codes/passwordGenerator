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
    @State var displayWord: String = ""
    var body: some View {
        VStack {
            Text("PasswordGen")
                .bold()
                .padding()
            Spacer()
            Text(displayWord)
                .padding()
            Spacer()
            Button("Generate", action: {
                if selector == 0 && show {
                    word = lowerCase()
                    displayWord = xer(txt: word)
                }
                else if selector == 0 && show == false {
                    word = lowerCase()
                    displayWord = word
                }
                else if selector == 1 && show {
                    word = lowerNum()
                    displayWord = xer(txt: word)
                }
                else if selector == 1 && show == false {
                    word = lowerNum()
                    displayWord = word
                }
                else if selector == 2 && show {
                    word = lowerUpNum()
                    displayWord = xer(txt: word)
                }
                else if selector == 2 && show == false {
                    word = lowerUpNum()
                    displayWord = word
                }
                else if selector == 3 && show {
                    word = allchar()
                    displayWord = xer(txt: word)
                }
                else if selector == 3 && show == false {
                    word = allchar()
                    displayWord = word
                }
            })
            .padding()
            Button("Show word", action: {
                show = !show
                if show {
                    displayWord = xer(txt: word)
                }
                else {
                    displayWord = word
                }
            })
            .padding()
            Button("Select character type", action: {
                viewRouter.currentPage = .page2
            })
            .padding()
            Button("Copy password", action: {
                UIPasteboard.general.string = word
            })
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
