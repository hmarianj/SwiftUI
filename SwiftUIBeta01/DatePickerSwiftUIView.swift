//
//  DatePickerSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 08/08/2023.
//

import SwiftUI

struct DatePickerSwiftUIView: View {
    @State var currentDate = Date() // fecha actual
    
    var body: some View {
        Form {
            DatePicker("Selecciona una fecha ",
                       selection: $currentDate,
                       in: Date()..., // para decirle que la minima fecha es el dia de hoy
                       displayedComponents: .date // si quiero mostrar fecha, hora...
                    )
            Text(currentDate , style: .date) // style para que solo me muestre la fecha
                .bold()
        }
//        VStack {
//            DatePicker("Seleciona una fecha", selection: $currentDate)
//
//            DatePicker("Seleciona una fecha", selection: $currentDate)
//                .datePickerStyle(WheelDatePickerStyle()) // formato rueda
//            DatePicker("Seleciona una fecha", selection: $currentDate)
//                .datePickerStyle(GraphicalDatePickerStyle()) // formato calendario
//        }
    }
}

// la view se llama DatePicker es para  que el usuario pueda introducir una fecha.
struct DatePickerSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerSwiftUIView()
    }
}


