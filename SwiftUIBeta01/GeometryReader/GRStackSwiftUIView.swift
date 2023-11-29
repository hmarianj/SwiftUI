//
//  GRStackSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 27/08/2023.
//

import SwiftUI

struct GRStackSwiftUIView: View {
    var body: some View {
        VStack {
            GeometryReader {proxy in
                VStack(spacing: 0) {
                    HStack (spacing: 0){
                        Rectangle()
                            .foregroundColor(Color.purple)
                            .overlay(Text("1"))
                            .frame(
                                width: proxy.size.width/2,
                                height: proxy.size.height/2)
                        Rectangle()
                            .foregroundColor(Color.green)
                            .overlay(Text("2"))
                            .frame(
                                width: proxy.size.width/2,
                                height: proxy.size.height/2)
                    }
                    Rectangle()
                        .foregroundColor(Color.yellow)
                        .overlay(Text("3"))
                        .frame(
                            width: proxy.size.width,
                            height: proxy.size.height * 0.33) // le estoy diciendo que ocupe un 33% de un espacio total
                }
                
            }
            .background(Color.red)
        }

    }
}
// un layout cuztomizable al usar el width: proxy.size.width/2 hemos adaptado los dos rectagulos de arriba para que ocupen la mitad de la pantalla de cualquier dispositivo
struct GRStackSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        GRStackSwiftUIView()
    }
}
