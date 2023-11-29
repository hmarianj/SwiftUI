//
//  TextFileSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 07/08/2023.
//

import SwiftUI

struct TextFileSwiftUIView: View {
    @State var mail = ""
    @State var clave = ""
    
    var body: some View {
        VStack {
            TextField("Username", text: $mail)
                .keyboardType(.emailAddress) // para usar el @
                .disableAutocorrection(true) // deshablitar el autocorrector
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .padding(.top, 40)
                .onChange(of: mail , perform: { value in print("New value: \(value)")})
            SecureField("Password", text: $clave)
                .keyboardType(.emailAddress) // para usar el @
                .disableAutocorrection(true) // deshablitar el autocorrector
                .autocapitalization(.none)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .padding(.top, 40)
                .onChange(of: clave , perform: { value in print("New value: \(value)")})
        }
        
    }
}
// el textfield es un campo de texto donde el usuario va a poder introduccir informarcion
// utilizamos una variable strignde tipo binding para que el texto sea mutable cadavez que alguien escribe algo este se actualice con State
// el onChange es para que cada vez que haya algo en nuestro text field yo pueda agarrar el ese texto y hacer algo con el, en este caso printearlo por consola
// SecureField es para colocar la contraseña de manera segura con los ****

// .autocapitalization(.none) en el campo de entrada de contraseña (SecureField) para deshabilitar cualquier tipo de capitalización automática. Esto es útil cuando deseas asegurarte de que la entrada del usuario no se vea afectada por la corrección automática o la capitalización de las palabras.
struct TextFileSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TextFileSwiftUIView()
    }
}
