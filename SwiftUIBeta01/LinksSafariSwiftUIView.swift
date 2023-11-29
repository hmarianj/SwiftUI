//
//  LinksSafariSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 08/08/2023.
//

import SwiftUI

struct Pokemon {
    let nombre: String
    let id: Int
    let type: String?
}

struct LinksSafariSwiftUIView: View {
    let hola: String = "Holis"
    let number: Int = 5
    
    let url = URL(string: " ")
    
    var body: some View {
        
        VStack {
            // Me fijo si existe una url con el string:
            if let url = URL(string: "https://github.com/hmarianj") {
                // Si existe, muestro el link
                Link("Ir a mi github", destination: url)
                    .font(.title)
            } else {
                // Si no existe muestro el texto de error
                Text("Error de aplicacion")
                    .foregroundColor(.red)
            }
            
            // de esta manenera podemos añadir modificadores
//            Link(destination: , label: <#T##() -> View#>)
            // el ! es para decir que si o si esto es una url
            // ? es opcional
            // ! es que si si o existe, es recomendable usar el condicional
            Link(destination: URL(string: UIApplication.openSettingsURLString)!,
                 label: {
                    Label("Settings", systemImage: "gear")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(30)
            })

            }
        }
    }


struct LinksSafariSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LinksSafariSwiftUIView()
    }
}
