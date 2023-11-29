//
//  ContextMenuSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 16/08/2023.
//

import SwiftUI

struct ContextMenuSwiftUIView: View {
    var body: some View {
        Text ("Aprende con SwiftBeta" )
            .padding ()
            .contextMenu(
                ContextMenu (menuItems: {
                    Button("SwiftUI") {
                        print ("Quiero Aprender SwiftUI" )
                    }
                    Button("Xcode"){
                        print ("Quiero Aprender Xcode")
                    }
                    Button (action: {
                        print ("Quiero Aprender Swift")
                    }, label: {
                        Label("Swift", systemImage: "iphone")
                    })
                }))
    }
}
// Adentro del menu items van a ir los elementos que queremos que aparezcan en este caso buttoms, pueden ser textos tambien
// ContextMenu en  es una vista que nos permite mostrar un menu de opciones. Para ello debemos usar el modificador .contextMenu en la vista que queramos que tenga este menu. Usando este modificador podemos crear un menu que aparece en forma de popup cuando el user mantiene pulsado el dedo sobre la vista. Dentro de este menu aparecen botones que podemos pulsar para realizar alguna acción.
struct ContextMenuSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuSwiftUIView()
    }
}
                        
