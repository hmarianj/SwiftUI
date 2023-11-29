//
//  FormSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 15/08/2023.
//

import SwiftUI

struct FormSwiftUIView: View {
    
    @State var deciveName = "Iphone 13 pro"
    @State var isOnToggle = true
    @State var day = Date()
    @State var currentColor : Color = .blue
    var body: some View {
        Form {
            Section(header: Text("Settings")) {
                TextField("Device Name", text: $deciveName)
                Toggle("Wi-fi", isOn: $isOnToggle)
            }
            Section(header: Text("Account"),
                    footer:
                        HStack {
                            Spacer()
                            Label("Version 17.0", image: "iphone")
                            Spacer()
                        }
                    ) {
                    DatePicker("Date", selection: $day)
                    ColorPicker("Color", selection: $currentColor)
            }
        }
    }
}
// formularios
// los formularios se pueden separar por secciones y colocarles un header y un footer con Section
struct FormSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FormSwiftUIView()
    }
}
