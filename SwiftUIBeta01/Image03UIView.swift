//
//  Image03UIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 06/08/2023.
//

import SwiftUI

struct Image03UIView: View {
    var body: some View {
        VStack {
            Image("youtube")
                .resizable() // para decirle a la imagen que ocupe toda la pantalla
                .scaledToFit() // para redimensionar y que no quede distorsionada
            .frame(width: 300)
            ButtonSwiftUIView() // llame a mi vista de button para aplicarla en esta pantalla
        }
            //.renderingMode(.template) para cambiarle el color a el svg o icono
            //.resizable(resizingMode: .tile) me crea un patron de diseño, toda la pantalla se ve con imagenes de youtube

    }
}

struct Image03UIView_Previews: PreviewProvider {
    static var previews: some View {
        Image03UIView()
    }
}
