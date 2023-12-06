//
//  ContentView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 06/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
// (alignment: .leading)me alinea la vista a la izquierda
// spacing: 18 me separa el espacio entre los elementos de la VS
// ZSTACK es una vista que esta arriba de otra
        ZStack {
            VStack (alignment: .leading, spacing: 8) {
                Text("Siguiendo")
                    .font(.title)
                    .bold() // colocarle en negrita
                Text("CANALES RECOMENDADOS")
                    .foregroundColor(Color.gray)
                HStack {
                    Rectangle()
                        .foregroundColor(Color.blue)
                    .frame(width: 118, height: 68)
                    VStack (alignment: .leading) {
                        HStack {
                            Circle()
                                .foregroundColor(Color.blue)
                                .frame(width: 18, height: 18)
                            Text("Marian Hernandez")
                            .bold()
                        }
                        Text("iOS Developer")
                        Text("Aprendiendo Swift")
                            .foregroundColor(Color.gray)
                    }
                }
                
            }
//            Text("Estoy en proceso")
//                .foregroundColor(Color.red)
//                .font(.largeTitle)
//                .underline()
//                .background(Color.black)
//                .rotationEffect(.degrees(-20))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// la struct ContentView_Previews es para poder visualizar la vista previa de mi vista, si la elimino no podre visualizar nada

// Con cmd + shift + h , en el simulador puedo ir a la home de mi simulador y entrar nuevamente a la app
