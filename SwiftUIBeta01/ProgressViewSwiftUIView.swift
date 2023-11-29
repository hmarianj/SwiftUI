//
//  ProgressViewSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 08/08/2023.
//

import SwiftUI

struct ProgressViewSwiftUIView: View {
    @State var isLoading = false
    @State var progress : Float = 0.0
    var body: some View {
                VStack {
                    if isLoading {
                        ProgressView("Cargando...")
                            .padding(.bottom, 40)
                            .scaleEffect(2) // para colocarlo mas grande/
                    }
                    Button("Cargando") {
                        // isLoading = !isLoading !es el operador NOT que da el valor contrario al inicial si antes era false ahora sera true
                        isLoading.toggle()
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                }
        
        //Aquí está la secuencia de eventos cuando el usuario interactúa con la vista:
        //Inicialmente, isLoading es false, por lo que el botón "Cargando" se muestra y el componente de progreso no está presente.
        //Cuando el usuario hace clic en el botón, isLoading cambia a true, lo que oculta el botón "Cargando" y muestra el componente de progreso.
        //Si el usuario hace clic en el botón nuevamente, isLoading cambia de vuelta a false, lo que oculta el componente de progreso y muestra el botón "Cargando".
        //En resumen, la variable isLoading controla el estado de carga en la vista y determina si se muestra el componente de progreso o el botón "Cargando". Esto se logra al condicionar la presencia del componente de progreso en la vista según el valor de isLoading.
            
        VStack {
            ProgressView(value: progress)
            Button("Cargando") {
                progress += 0.1
                 }.padding(.top, 40)
        }.padding(.horizontal, 40)
    }
    // barra de progreso
    
    
    // es para indicarle al usuario que debe esperar, dado a que se esta cargando algo.
    struct ProgressViewSwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            ProgressViewSwiftUIView()
        }
    }
    
}
