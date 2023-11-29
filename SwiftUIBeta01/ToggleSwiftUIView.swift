//
//  ToggleSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 09/08/2023.
//

import SwiftUI

struct ToggleSwiftUIView: View {
    @State var isOn  = false
    
    var body: some View {
        Form {
            Toggle("Activar notificaciones", isOn: $isOn)
            Text("\(isOn.description)") // estoy recongiendo el valor que me puede servir para hacer validaciones, hacer una animacion en pantalla, enviar al backend...
        }
    }
}
// el toggle solo tiene dos valores o es true o es false
struct ToggleSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleSwiftUIView()
    }
}
