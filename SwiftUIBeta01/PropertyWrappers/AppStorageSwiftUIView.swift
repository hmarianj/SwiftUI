//
//  AppStorageSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 22/08/2023.
//

import SwiftUI

struct AppStorageSwiftUIView: View {
    
    @State var name: String = ""
    @AppStorage("appName") var appName: String = ""
    var body: some View {
        Form {
            TextField("Username", text: $name)
            HStack {
                Spacer()
                Button("Guardar") {
                    appName = name
                }
                .padding()
                .font(.title2)
                Spacer()
            }
            HStack {
                Spacer()
                Button("Imprimir") {
//                    print(UserDefaults.standard.string(forKey: "appName"))
                }
                .padding()
                .font(.title2)
                Spacer()
            }
        }
        .onAppear {
            name = appName // con el onppear hago que aparezca en el campo de texto
        }
    }
}

// AppStorage  lo usamos para persistir guardar  información. Este Property Wrapper usa por debajo la clase UserDefaults para almacenar información en una base de datos.

struct AppStorageSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageSwiftUIView()
    }
}
