//
//  DragGestureSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 16/08/2023.
//

import SwiftUI

struct DragGestureSwiftUIView: View {
    
    @State var dragOffset: CGSize = .zero
    
    var body: some View {
        RoundedRectangle (cornerRadius : 20)
            .frame (width: 100, height: 100)
            .offset(x: dragOffset.width, y: dragOffset.height)
            .gesture(
                DragGesture()
                    .onChanged ({ value in
                        dragOffset = value.translation
                    })
                    .onEnded ({ _ in
                        withAnimation (.spring()) {
                            dragOffset = . zero
                        }
                    })
            )
    }

}
              
// DragGesture  nos sirve para ejecutar alguna acción cuando un user arrastra una vista. Podemos usar distintos modificadores como .onChanged o .onEnded para realizar las acciones que queramos.

struct DragGestureSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureSwiftUIView()
    }
}
