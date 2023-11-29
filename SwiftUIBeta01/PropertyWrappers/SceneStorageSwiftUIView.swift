//
//  SceneStorageSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 22/08/2023.
//

import SwiftUI

struct SceneStorageSwiftUIView: View {
    
    @SceneStorage ("tweet") private var tweet: String = ""
    @SceneStorage ("toggle_publish_best_hour") private var togglePublishBestHour: Bool = false
    
    var body: some View {
        Form {
            TextEditor(text: $tweet)
                .frame(width: 300, height: 300)
            Toggle("Publicar a la mejor hora", isOn: $togglePublishBestHour)
                .padding ()
            HStack {
                Spacer()
                Button (togglePublishBestHour ? "Publicar a la mejor hora " : "Publica ahora")
                        {
                        print("Publicando...")
                    }
                Spacer()
            }
        }
    }
}
// en vez de @State usamos @StateStorage
// SceneStorage en SwiftUI es otro Property Wrapper para guardar el estado de nuestras pantallas, ¿esto qué significa? imagina que estás rellenando un formulario y puede que lo dejes a medias, por que te llaman, minimizas la app, etc y al estar la app en background el sistema cierre tu app para liberar recursos y usarlos en otra app. Si volvemos abrir la app, esta información del formulario ha desaparecido y debes rellenarla de nuevo. Con SceneStorage podemos recuperar esta información y dejarlo por donde estaba, dando una sensación de continuidad al user dentro de la app.

        

struct SceneStorageSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SceneStorageSwiftUIView()
    }
}
