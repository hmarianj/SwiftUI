//
//  TabViewSwift.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 15/08/2023.
//

import SwiftUI

struct TabViewSwift: View {
    var body: some View {
        TabView {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)  // aca llamaria a mi vista
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            FormSwiftUIView() // aca llamaria a mi vista
                .tabItem {
                    Image(systemName: "person")
                    Text("User")
                }
            ToggleSwiftUIView()
                .tabItem {
                    Image(systemName: "togglepower")
                    Text("Settings")
                }
        }.accentColor(Color.purple) // cambiar el color del que esta activo
//        TabView {
//            Rectangle()
//                .cornerRadius(20)
//                .padding()
//                .foregroundColor(Color.red)
//            Rectangle()
//                .cornerRadius(20)
//                .padding()
//                .foregroundColor(Color.blue)
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)  // aca llamaria a mi vista
//                .tabItem {
//                    Image(systemName: "house")
//                    Text("Home")
//                }
//            FormSwiftUIView() // aca llamaria a mi vista
//                .tabItem {
//                    Image(systemName: "person")
//                    Text("User")
//                }
//            ToggleSwiftUIView()
//                .tabItem {
//                    Image(systemName: "togglepower")
//                    Text("Settings")
//                }
//        }.frame(height: 700)
//         .tabViewStyle(PageTabViewStyle()) // para ver la tab deslizable horizontal con puntos
    }
    
}

struct TabViewSwift_Previews: PreviewProvider {
    static var previews: some View {
        TabViewSwift()
    }
}
