//
//  LabelSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 06/08/2023.
//

import SwiftUI

struct LabelSwiftUIView: View {
    var body: some View {
        Label("Regalame un like", systemImage: "hand.thumbsup.fill")
            .font(.largeTitle)
            .labelStyle(TitleOnlyLabelStyle()) //sirve para esconder el icono en este caso, dandole prioridad a al titulo, y tabien puede ser viceversa.
    }
}
    // el label sirve para agregar un symbol y una imagen juntos en una vista, asi no hacer una HStack
struct LabelSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LabelSwiftUIView()
    }
}
