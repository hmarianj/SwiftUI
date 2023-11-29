//
//  LayoutGeometricReaderSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 27/08/2023.
//

import SwiftUI

struct LayoutGeometricReaderSwiftUIView: View {
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Text("Width: \(proxy.size.width)")
                    .background(Color.orange)
                    .padding()
                Text("Height: \(proxy.size.height)")
                    .background(Color.orange)
                    .padding()
                Text("Coordenadas local: \(proxy.frame(in: .local).debugDescription)")
                    .background(Color.orange)
                    .padding()
                Text("Coordenadas global: \(proxy.frame(in: .global).debugDescription)")
                    .background(Color.orange)
                    .padding()
                
            }
        }
        .background(Color.red)
        .frame(width: 300, height: 300)
    }
}
// GeometryReader es un contenedor de vistas en SwiftUI (como VStack, List, Form, etc) pero a diferencia de los demás podemos acceder a un parámetro llamado GeometryProxy que nos proporciona la posición y tamaño que ocupa la vista del GeometryReader. ¿Esto para qué nos sirve? Esta información es muy útil para posicionar las subvistas que añadimos a nuestro GeometryReader con un layout customizado, y también para crear animaciones. 

// las coordenadas locales es el tamano que ocupa mi contenerdor padre, normalmente comenzaran en el eje x y y con valor 0
// las coordenadas globales son la que ocupan el tamano completo de la pantalla de mi device, el margen que hay desde la pantalla hasta el contenedor padre
// el proxi es un parametro que genera informacion de geometry reader en si lo usamos en el text para acceder al ancho y alto que ocupa nuestro GR
struct LayoutGeometricReaderSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutGeometricReaderSwiftUIView()
    }
}
