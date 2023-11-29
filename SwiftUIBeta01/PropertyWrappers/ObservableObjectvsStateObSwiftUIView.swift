//
//  ObservableObjectvsStateObSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 21/08/2023.
//

import SwiftUI

struct ObservableObjectvsStateObSwiftUIView: View {
    
    @State private var counter : Int = 0
    
    var body: some View {
        VStack {
            Text("Incrementar: \(counter)")
                .padding()
            Button("Sumar uno") {
                counter += 1
            }
            ListVideos(videosClass: videoClassModel())
            Spacer()
        }
    }
}

// una nueva struct

struct ListVideos: View {
    
    @StateObject var videosClass: videoClassModel
    var body: some View {
        NavigationView {
            List(videosClass.videosModel, id: \.self) { video in
                Text(video)
            }
            .navigationTitle ("SwiftBeta Videos")
            .navigationBarItems(leading:
                                    Button ("Añadir", action: {videosClass.addMoreTopics()})
            )
        }
    }
}

// la funcion no deberia estar dentro de la estructura, porque las class van en otro lado o vienen del servidor, entonces crearemos una clase con esa funcion para poder usarla en diferentes vistas

class videoClassModel: ObservableObject {
    @Published var videosModel: [String] = []
    
    init() {
        videosModel = ["Aprende SwiftUI",
                       "Aprende Xcode",
                       "Aprende Swift"]
    }
    func addMoreTopics() {
        videosModel.append ("Aprende CI/CD")
        videosModel.append("Aprende Git")
    }
}


struct ObservableObjectvsStateObSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ObservableObjectvsStateObSwiftUIView()
    }
}
