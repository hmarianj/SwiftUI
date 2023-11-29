//
//  TapGestureSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 16/08/2023.
//

import SwiftUI

struct TapGestureSwiftUIView: View {
    var body: some View {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 100, height: 100)
                .foregroundColor(Color.purple)
                .onTapGesture(count: 2) {
                    print("View taped")
                }
    }
}
// .onTapGesture (count:2) si agremos esto le estamos diciendo a cuantos tap queemos que se ejecute el codigo en este caso seria 2
struct TapGestureSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureSwiftUIView()
    }
}
