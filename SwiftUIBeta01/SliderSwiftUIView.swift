//
//  SliderSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 09/08/2023.
//

import SwiftUI

struct SliderSwiftUIView: View {
    @State var itemsCounter: Float = 5.0
    @State var isEditing = false
    
    var body: some View {
                Form {
                    Slider(value: $itemsCounter,
                           in: 0...10,
                           step: 1,
                           onEditingChanged: { editing in
                               isEditing = editing
                           },
                           minimumValueLabel: Text("min"),
                           maximumValueLabel: Text("max"),
                           label: { Text("Value") })
                    Text("\(itemsCounter)")
                        .foregroundColor(isEditing ? .green : .black)
                }
            }
                
        }

// otra manera de hacerlo
//        Form {
//            Slider(value: $itemsCounter,
//                   in: 0...10,
//                   step: 1,
//                   onEditingChanged: { editing in
//                       isEditing = editing
//                   })
//
//            HStack {
//                Text("min")
//                Spacer()
//                Text("max")
//            }
//        }
    
// esta vista nor sirve para el valor de un rango



// nos permite seleccionar un valor, dentro de un rango
struct SliderSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SliderSwiftUIView()
    }
}
