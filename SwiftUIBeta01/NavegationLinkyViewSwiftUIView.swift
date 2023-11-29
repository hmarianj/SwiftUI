//
//  NavegationLinkyViewSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 15/08/2023.
//

import SwiftUI

struct NavegationLinkyViewSwiftUIView: View {
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink( "Option Menu 1",
                                destination: Text ("Some information" ))
                NavigationLink("Option Menu 2",
                               destination: Button ("Tap me!", action: {
                    print ("Hello 10S Developer")
                }))
                NavigationLink( "Option Menu 3",
                                destination: Text ("Hola" ))
                NavigationLink( "Option Menu 4",
                                destination: Text ("Llegaste aca"))
            }
            .navigationBarItems(trailing: Button ("Done", action: {
                print( "NavigationView Button") // trailing (derecha) o izquirda se puede
            })) // para aplicarle una accion
            .navigationTitle("Menu" )
            .navigationBarTitleDisplayMode(.automatic) // cambiar el estilo de Menu .large .inline
            .navigationBarHidden(false) // escodemos el navbar si es true
        }
    }
}
struct NavegationLinkyViewSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        NavegationLinkyViewSwiftUIView()
    }
}
