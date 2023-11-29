//
//  AsyncImageSwiftUIView.swift
//  SwiftUIBeta01
//
//  Created by Herfli on 22/08/2023.
//

import SwiftUI

struct AsyncImageSwiftUIView: View {
    private var url = URL(string: "https://www.simplilearn.com/ice9/free_resources_article_thumb/iOS_Developer_Salary_in_2023.jpg")
    
    var body: some View {
        AsyncImage(url: url!) { image in
            image
                .resizable()
                .frame(width: 400, height: 300)
                .padding()
        } placeholder: { // para que mientras la imagen busca la url le puedo pasar un progressview como placeholder
            ProgressView()
        }
    }
    }

// AsyncImage en SwiftUI es una vista que permite mostrar una imagen solo pasando una URL.

struct AsyncImageSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageSwiftUIView()
    }
}
