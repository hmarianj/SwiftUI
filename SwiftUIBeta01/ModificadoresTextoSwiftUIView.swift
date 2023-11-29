//
//  ModificadoresTextoSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 06/08/2023.
//

import SwiftUI

struct ModificadoresTextoSwiftUIView: View {
    var body: some View {
        VStack {
            Text("Aprende a vivir con una energía positiva en cada instante y piensa siempre que las cosas que son para uno llegan en su debido momento. Sólo hace falta mucho esfuerzo, fe y esperanza. Por ello, cree y crearás todo lo que haces.")
                .font(.title3)
                .foregroundColor(Color.blue)
                .underline()
                .lineSpacing(12) // separa entre lineas como lineheight
                // .lineLimit(4)  cantidad de lienas que quiero que se vea del texto
                .shadow(color: Color.gray, radius: 1, x: 0, y: 10) // sombra
                .padding()
            .rotation3DEffect(.degrees(20), axis: (x: 2, y: 0, z: 0))
            // concatenando textos con diferentes estilos
            VStack {
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tempus eros at erat imperdiet, id porttitor lectus faucibus. ")
                    .foregroundColor(Color.red)
                + Text("Lorem ipsum ")
                    .bold()
                + Text("adipiscing ")
                    .foregroundColor(Color.blue)
                    .font(.largeTitle)
            } .padding()
            VStack (spacing: 10){
                Text("Fecha")
                Text(Date(), style: .date)
                Text("Hora")
                Text(Date(), style: .time)
                Text("Temporizador")
                Text(Date(), style: .timer) // inicializa un temporizador
                Text("Tiempo restante")
                Text(Date().addingTimeInterval(3600), style: .timer)
            }
        }
    }
}

struct ModificadoresTextoSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ModificadoresTextoSwiftUIView()
    }
}
