//
//  ListSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 15/08/2023.
//

import SwiftUI

struct Device {
    let title: String
    let imageName: String
}

let home = [
    Device(title: "Laptop", imageName: "laptopcomputer"), Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Mac Pro", imageName: "macpro.gen3"),
    Device(title: "Displays", imageName: "display.2"),
    Device(title: "Apple TV", imageName: "appletv")
]
let work = [
    Device(title: "iPhone", imageName: "iphone"), Device(title: "iPad", imageName: "ipad"),
    Device(title: "Airpods", imageName: "airpods"),
    Device(title: "Apple Watch", imageName: "applewatch"),
    ]

struct ListSwiftUIView: View {
    
    var body: some View {
        List {
            Section(header: Text("home")) {
                ForEach(home, id: \.title) { device in
                    Label(device.title, systemImage: device.imageName)
                }
            }
            Section(header: Text("Work")) {
                ForEach(work, id: \.title) { device in
                    Label(device.title, systemImage: device.imageName)
                }
            }
        }
        .listStyle(SidebarListStyle())
    }
// a las listas se le puede pasar tambien secciones
// podemos agregarle estilos a las listas que ya vinen definidos por swift
// .listStyle(SidebarListStyle())
// .listStyle(GroupedListStyle())
// .listStyle(InsetGroupedListStyle())
    struct ListSwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            ListSwiftUIView()
        }
    }
}

