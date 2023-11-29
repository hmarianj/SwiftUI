//
//  TextEditorSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 07/08/2023.
//

import SwiftUI

struct TextEditorSwiftUIView: View {
    @State var text: String =  "Escribe algo..."
    @State var counter: Int = 0
    
    var body: some View {
        VStack {
            TextEditor(text: $text) // Campo de edición de texto
                .font(.title)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .foregroundColor(Color.blue)
                .padding()
                .onChange(of: text) { textoActualizado in
                    print(textoActualizado)
                    // Actualiza el contador con la cantidad de caracteres
                    counter = textoActualizado.count
                }
            
            Text("\(counter)") // Muestra el contador de caracteres
                .foregroundColor(counter <= 280 ? .green : .red)
                .font(.largeTitle)
                .onChange(of: counter) { counterActualizado in
                    print(counterActualizado.description)
                }
        }
            
    }
}
// para que el contador se vaya actualizando cada vez que escribo voy a utilizar onChange
//En SwiftUI, el modificador .onChange(of:perform:) se utiliza para observar los cambios en el valor de una propiedad y ejecutar un bloque de código específico cuando esa propiedad cambia.
struct TextEditorSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorSwiftUIView()
    }
}
