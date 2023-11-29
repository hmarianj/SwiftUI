//
//  StepperSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 09/08/2023.
//

import SwiftUI

struct StepperSwiftUIView: View {
    @State var iphoneCounter = 1
    @State var counterTwo = 1
    
    var body: some View {
        VStack {
            Form {
                Stepper("Iphone \(iphoneCounter)",
                        value: $iphoneCounter,
                        in: 1...5) // el rango quiero que vaya de 1 a 5max.
            }
            
            
            
            // con este inicializador vamos hacer que se ejecute algo cuando el usuario haga click en mas o menos
            //          Stepper(<#T##title: StringProtocol##StringProtocol#>, onIncrement: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>, onDecrement: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
            Form {
                Stepper("Items \(counterTwo)") {
                    counterTwo += 1
                    print("Incrementar Numero \(counterTwo)")
                }   onDecrement: {
                    counterTwo -= 1
                    print("Decrementar Numero \(counterTwo)")
                    
                }
            }
            
        }
    }
    
    //step: 2)  aumenta la antidad de dos en dos
    // para incrementar o decrementar valores.
    struct StepperSwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            StepperSwiftUIView()
        }
    }
}
