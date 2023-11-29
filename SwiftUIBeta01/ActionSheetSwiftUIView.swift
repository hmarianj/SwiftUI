//
//  ActionSheetSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 16/08/2023.
//

import SwiftUI

struct ActionSheetSwiftUIView: View {
    @State var isPresented: Bool = false
    var body: some View {
        VStack {
            Text ("Aprende un lenguaje de programacion")
                .padding ()
            Button ("Aceptar") {
                isPresented = true
            }
        }
        .actionSheet (isPresented: $isPresented, content: {
            ActionSheet (title: Text("Aprende un lenguaje de programacion"),
                         message: Text("Elige la opción que quieras:"),
                         buttons: [.default(Text( "SwiftUI"),
                                            action: {
                                                print ("Aprende SwiftUI" )
                                            }),
                                    .default(Text("Xcode")),
                                    .destructive(Text("Cancelar"))])
        })
    }
}
// los buttons son una colecciones de arrays, donde podemos escoger un tipo de buttons, el texto y el action
// ACTIONSHEET  es una vista que aparece en la parte inferior de la pantalla con un title, message y diferentes opciones a escoger.
struct ActionSheetSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetSwiftUIView()
    }
}
