//
//  LazySwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 15/08/2023.
//

import SwiftUI

struct LazySwiftUIView: View {
    var body: some View {
        
        let elements = 1...500
        let gridItems = [GridItem(.fixed(100)),
                         GridItem(.fixed(100)),
//                         GridItem(.adaptive(minimum: 30)),
                         GridItem(.fixed(100))]
        
//        ScrollView { // dentro de una ScrollView para que pueda scrollear
//            LazyVGrid(columns: gridItems, content: {
//                ForEach (elements, id: \.self) { element in // recorro el array
//                    VStack {
//                        Circle()
//                            .frame (height: 40)
//                        Text ("\(element) ")
//                    }
//                }
//            })
//        }
        
        // horizontal scroll
        ScrollView(.horizontal) { // dentro de una ScrollView para que pueda scrollear
            LazyHGrid(rows: gridItems, content: {
                ForEach (elements, id: \.self) { element in // recorro el array
                    VStack {
                        Circle()
                            .frame (height: 40)
                            .foregroundColor(Color.purple)
                        Text ("\(element) ")
                    }
                }
            })
        }
    }
}
// lo que me permite las lazy view es que se van cargando a medida que ve sa scrolleando entonces no es pesado.
// los grid pueden ser .fixed .adaptiva (se ajusta a la pantalla la cantidad de grids o de circles en este caso) .flexible solo cambia el tamaño.
//[GridItem(.fixed(100)),
//GridItem(.flexible(minimum: 20)),
//GridItem(.adaptive(minimum: 30)),
//GridItem(.fixed(100))]

struct LazySwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LazySwiftUIView()
    }
}
