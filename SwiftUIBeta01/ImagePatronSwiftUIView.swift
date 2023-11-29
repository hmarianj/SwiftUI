//
//  ImagePatronSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 06/08/2023.
//

import SwiftUI

struct ImagePatronSwiftUIView: View {
    var body: some View {
        Image(systemName: "heart.circle")
            .resizable(resizingMode: .tile)
            .foregroundColor(Color.pink)
    }
}

struct ImagePatronSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePatronSwiftUIView()
    }
}
