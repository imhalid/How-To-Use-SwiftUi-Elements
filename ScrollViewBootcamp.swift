//
//  ScrollViewBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by Halid İçli on 2.12.2021.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(0 ..< 10) { item in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0 ..< 10) { item in
                                Rectangle()
                                    .fill(Color.purple)
                                    .cornerRadius(25)
                                    .frame(width: 250, height: 150)
                                    .shadow(radius: 10).opacity(0.2)
                                .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
