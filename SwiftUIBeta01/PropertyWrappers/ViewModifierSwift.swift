//
//  ViewModifier.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 27/08/2023.
//

import SwiftUI

// creamos una strucut para nuestro viewmodifier en este caso sera para darles estilos al btn, para inicializarla correctamente debe recibir la funcion body que recibe un parametro de tipo content y retorna una vista, content sera la vista que queremos modoficar

struct btnModifier : ViewModifier {
    func body (content: Content) -> some View {
        content
            .foregroundColor(Color.white)
            .fontWeight(.bold)
            .padding()
            .background(Color.purple)
            .cornerRadius(20)
    }
}

extension View {
    func btnModifierFunc() -> some View {
        self.modifier(btnModifier())
    }
}

struct ViewModifierSwift: View {
    var body: some View {
        VStack {
            Text("Hola, toca aca para aprender")
                .padding()
            Button("Aprender más") {
                print("Aprende")
            }
            .btnModifierFunc()
            Button("Aprender más con instacia") {
                print("Aprende")
            }
            .btnModifierFunc()
            Button("Aprender más no optimizado") {
                print("Aprende")
            }
            .modifier(btnModifier())
        }
    }
}
 
// para no usar .modifier(btnModifier()) y que nuestro codigo se vea mas limpio podemos crear una instacia de nuestro modificador solo debemos coger esta linea .modifier(btnModifier()) y meterla en una extesion view con una funcion con el nombre parecido y le pasamos la estructa
// se lo puedo pasar a cualquier vista por ejmplo de un btn y le paso .btnMofier y se aplica los cambios

//ViewModifier en SwiftUI es un protocolo que nos sirve para crear nuestros propios modificadores.
//Los modificadores en SwiftUI son muy útiles ya que nos permiten encapsular código y reutilizarlo por todas nuestra applicación iOS.

struct ViewModifierSwift_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierSwift()
    }
}
