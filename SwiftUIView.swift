//
//  SwiftUIView.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by Halid İçli on 3.12.2021.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack(alignment: .leading) {
                    Image("bigsur")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                    Text("Big Sur \(Image(systemName: "sun.dust"))")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy").font(.body)
                    Button("Bookmark", action: {
                        print("Bookmark")
                    })
                }
                .padding()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
