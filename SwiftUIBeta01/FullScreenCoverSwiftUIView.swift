//
//  FullScreenCoverSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 15/08/2023.
//

import SwiftUI

struct FullScreenCoverSwiftUIView: View {
    
    @State var isPresent: Bool = false
    
    var body: some View {
        VStack {
            Text("Vista 1")
                .padding()
            Button("Tap me") {
                isPresent = true
            }
            .padding()
            .foregroundColor(Color.white)
            .background(Color.blue)
            .cornerRadius(20)
        }
        // .sheet NO ocupa la pantalla completa
        // fullScreenCover SI ocupa completo
        .sheet(isPresented: $isPresent,
                         onDismiss: { isPresent = false },
                         content: {
            ZStack {
                Color.red.ignoresSafeArea()
                Button("Holaaaaa") {
                    isPresent = false
                }.foregroundColor(Color.white)
            }
        })
    }
}
// me muestra una pantalla pero por arriba de la mia, como un pop up
struct FullScreenCoverSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenCoverSwiftUIView()
    }
}
