//
//  ContentView2.swift
//  PasswordGen
//
//  Created by Tim Randall on 30/5/21.
//

import SwiftUI

struct ContentView2: View {
    @State var select0: String = ""
    @State var select1: String = ""
    @State var select2: String = ""
    @State var select3: String = "✅"
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        VStack {
            Text("Select Character Type:")
                .bold()
                .padding()
            Spacer()
            HStack{
                Button("Lower case letters", action: {
                    selector = 0
                    select0 = "✅"
                    select1 = ""
                    select2 = ""
                    select3 = ""
                })
                Text(select0)
            }
            .padding()
            HStack{
                Button("Lower case letter and numbers", action: {
                    selector = 1
                    select0 = ""
                    select1 = "✅"
                    select2 = ""
                    select3 = ""
                })
                Text(select1)
            }
            .padding()
            HStack{
                Button("Lower case/Upper case and numbers", action: {
                    selector = 2
                    select0 = ""
                    select1 = ""
                    select2 = "✅"
                    select3 = ""
                })
                Text(select2)
            }
            .padding()
            HStack{
                Button("Lower/Upper case, numbers and special characters", action: {
                    selector = 3
                    select0 = ""
                    select1 = ""
                    select2 = ""
                    select3 = "✅"
                })
                Text(select3)
            }
            .padding()
            Button("Back to main", action: {
                viewRouter.currentPage = .page1
            })
            .padding()
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2(viewRouter: ViewRouter())
    }
}
