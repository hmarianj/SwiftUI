//
//  ButtonSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 06/08/2023.
//

import SwiftUI

struct ButtonSwiftUIView: View {
    var body: some View {
        VStack {
            Button("Suscribirse") {
                print("me ejecute")
            }
            .btnModifierFunc()
//            .padding()
//            .font(.system(size: 40))
//            .foregroundColor(Color.white)
//            .background(Color.red)
//        .cornerRadius(16)
            
//        Button {
//            print("me ejecute")
//        } label: {
//            Circle()
//                .fill(Color.blue)
//                .frame(width: 200, height: 200)
//                .shadow(radius: 10)
//                .overlay(
//                    Image(systemName: "hand.thumbsup.fill")
//                        .foregroundColor(Color.white)
//                        .font(.system(size: 40, weight: .bold))
//                )
//            }
        }
    }
}

//El overlay sirve para poner un icono u otra cosa arriba de nuestro label
struct ButtonSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSwiftUIView()
    }
}
