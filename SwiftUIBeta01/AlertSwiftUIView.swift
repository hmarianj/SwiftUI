//
//  AlertSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 16/08/2023.
//

import SwiftUI

struct AlertSwiftUIView: View {
    
    @State var isAlert : Bool = false
    var body: some View {
        VStack {
            Text("Aceptas los terminos")
                .padding()
            Button("Aceptar") {
                isAlert  = true
            }
        }.alert(isPresented: $isAlert, content: {
            Alert(title: Text("Estas seguro"),
                  message: Text("Politicas y terminos seran aceptados"),
                  primaryButton: .default(Text("Aceptar"),
                                          action: {
                print("Aceptado")
            }),
                  secondaryButton: .destructive(Text("Cancelar")))
        })
    }
}
// ALERT es una vista, un popup que aparece al user con un title, message y algún button. Los buttons que se añaden son para que el user interactúe con esta vista y así podamos saber que opción han escogido.
// existen 3 tipos de buttons alert .default .destructive .cancel
struct AlertSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        AlertSwiftUIView()
    }
}
