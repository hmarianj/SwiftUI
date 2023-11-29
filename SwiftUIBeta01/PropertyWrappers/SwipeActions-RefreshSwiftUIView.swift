//
//  SwipeActios&RefreshSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 23/08/2023.
//

import SwiftUI

struct device {
    let title: String
    let imageName: String
}

let arrayOfDevices = [device(title: "Laptop", imageName: "laptopcomputer"),                                      device(title: "Mac mini", imageName: "macmini"),
                      device(title: "Mac Pro", imageName: "macpro.gen3"),
                      device(title: "Displays", imageName: "display.2"),
                      device(title: "Apple TV", imageName: "appletv")]

struct SwipeActions_RefreshSwiftUIView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(arrayOfDevices, id: \.title) { device in
                    Label(device.title, systemImage: device.imageName)
                        .swipeActions {
                            Button {
                                print ("Favoritos")
                                } label: {
                                Label("Fav", systemImage: "star.fill")
                                }
                                .tint(Color.yellow)
                            Button {
                                print ("Compartir")
                                } label: {
                                Label("Compartir", systemImage: "square.and.arrow.up")
                                }
                                .tint(Color.blue)
                        }
                        .swipeActions(edge: .leading) {
                            Button {
                                print ("Borrar")
                                } label: {
                                Label("Borrar", systemImage: "trash.fill")
                                }
                                .tint(Color.red)
                        }
                            
                        }
                    }
                    .refreshable {
                        print("Recargar informacion")
                    }
                    .navigationTitle("Devices")
                    }
        }
    }

//swipeActions en SwiftUI y refreshable en SwiftUI son dos modificadores que usamos para poder lanzar acciones en una List.
//- swipeActions en SwiftUI lo usamos para añadir acciones en nuestras celdas.
// - refreshable en SwiftUI lo usamos para realizar una acción en nuestra List.

// por defecto el swipeactions viene para deslizar desde la derecha, si lo quiero desde la izquierda colocamos (edge: .leading)

struct SwipeActios_RefreshSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActions_RefreshSwiftUIView()
    }
}
