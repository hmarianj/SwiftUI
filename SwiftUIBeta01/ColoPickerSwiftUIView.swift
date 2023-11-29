//
//  ColoPickerSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 08/08/2023.
//

import SwiftUI

struct ColoPickerSwiftUIView: View {
    @State var color: Color = .blue // el color con que se inicializa
    
    var body: some View {
        VStack {
            ColorPicker("Selecciona un color", selection: $color)
                .padding(.vertical, 20)
            Rectangle()
                .foregroundColor(color)
                .frame(width: 300, height: 80)
                .cornerRadius(30)
//            Text("Valor numérico del color: \(colorComponentsString(color))")
//                .padding(.top, 20)
        }.padding(60)
    }
    
}
// esta vista sirve para que el usuario seleccione un color

// Función para formatear los componentes RGB del color en un String
//    func colorComponentsString(_ color: Color) -> String {
//        var red: CGFloat = 0
//        var green: CGFloat = 0
//        var blue: CGFloat = 0
//        var alpha: CGFloat = 0
//
//        #if canImport(UIKit)
//        UIColor(color).getRed(&red, green: &green, blue: &blue, alpha: &alpha)
//        #else
//        NSColor(color).getRed(&red, green: &green, blue: &blue, alpha: &alpha)
//        #endif
//
//        let redInt = Int(red * 255)
//        let greenInt = Int(green * 255)
//        let blueInt = Int(blue * 255)
//
//        return "R: \(redInt), G: \(greenInt), B: \(blueInt)"
//    }
struct ColoPickerSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ColoPickerSwiftUIView()
    }
}
