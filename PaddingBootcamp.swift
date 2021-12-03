//
//  PaddingBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by Halit İçli on 1.12.2021.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack {
            Button {
                print("")
            } label: {
                VStack {
                    Text("hello")
                        .padding(.vertical, 5)
                        .padding(.horizontal, 7)
                        .background(Color.yellow)
                        .cornerRadius(10)
                        .foregroundColor(.black)
                    
                }.padding(.bottom, 3)
                    .background(Color.orange)
                    .cornerRadius(10)
                
            }
        }
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
