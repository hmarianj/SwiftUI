//
//  IconosSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 06/08/2023.
//

import SwiftUI

struct IconosSwiftUIView: View {
    var body: some View {
        Image(systemName: "moon.circle.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 200)
            .foregroundColor(Color.purple)
        
    }
}

struct IconosSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        IconosSwiftUIView()
    }
}
