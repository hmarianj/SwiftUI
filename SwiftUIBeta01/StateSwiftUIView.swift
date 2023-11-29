//
//  StateSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 06/08/2023.
//

import SwiftUI

struct StateSwiftUIView: View {
    @State var counter = 0
    
    var body: some View  {
        VStack (spacing: 40) {
            HStack {
                Text("Contador:")
                    .font(.title2)
                Text("\(counter)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
            }
            Button("Incrementador") {
                counter += 1
            }
            .foregroundColor(Color.white)
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
            .cornerRadius(30)
            Button("Decrementador") {
                counter -= 1
            }
            .foregroundColor(Color.white)
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
            .cornerRadius(30)
        }
    }
    
}

// un "State" (Estado) se refiere a una propiedad especial que se utiliza para almacenar y rastrear el valor mutable de una variable en una vista. Cuando el valor de un estado cambia, SwiftUI actualizará automáticamente la vista para reflejar ese cambio.

// La variable counter es un estado, por lo que cuando se actualiza, la vista se vuelve a renderizar automáticamente para mostrar el nuevo valor del contador.

// El texto \(counter) es una interpolación de cadena en Swift. En SwiftUI, puedes usar esta sintaxis para incrustar valores de variables o expresiones dentro de un string.

// Cuando usas \(variable) dentro de un string, Swift reemplaza esa parte de la cadena con el valor actual de la variable. En el ejemplo, \(counter) se reemplaza por el valor actual de la variable counter.

struct StateSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        StateSwiftUIView()
    }
}
