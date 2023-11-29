//
//  StateVsBindingSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 21/08/2023.
//

import SwiftUI

struct StateVsBindingSwiftUIView: View {
    
    @State var counter : Int = 0
    
    var body: some View {
        counterView(counter: $counter)
    }
}
// Creo una nueva struct para crear en ella mi counter View y luego llamarla desde StateVsBindingSwiftUIView
// en mi vista principal tengo mi @state para que esta cambie de estado cada vez que ocuura algo, pero la vista que tiene el incrementador es otra (counterView, entonces de mi vista principal incluyo a counterView que tiene un @Binding para conectar los estados de las vistas.)

// ### Binding vs State
//En resumen, @State se utiliza para gestionar el estado mutable dentro de una vista, mientras que @Binding se utiliza para crear una conexión bi-direccional entre propiedades de vistas diferentes, permitiendo que una vista hija modifique una propiedad de la vista padre.

struct counterView: View {
    
    @Binding var counter: Int
    
    var body: some View {
        VStack {
            Text("Incrementar: \(counter)")
                .padding()
            Button("Sumar uno") {
                counter += 1
            }
            .padding()
            .background(Color.red)
            .foregroundColor(Color.white)
            .fontWeight(.bold)
            .font(.title3)
            .cornerRadius(20)
        }
    }
}

struct StateVsBindingSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        StateVsBindingSwiftUIView()
    }
}
