//
//  LazyVGridBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by Halid İçli on 2.12.2021.
//

import SwiftUI

struct LazyVGridBootcamp: View {
    var columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            Rectangle()
                .frame(height: 350)
                .padding(.bottom)
                .foregroundColor(.yellow)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section {
                        ForEach(0..<50) { index in
                            Rectangle()
                                .foregroundColor(.orange)
                                .frame(height: 120)
                        }
                    } header: {
                        Text("Merhaba")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .offset(x: 15)
                            .background(.cyan)
                            .padding(.bottom)
                            
                    }

                    
                })
        }
        
        
    }
}

struct LazyVGridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridBootcamp()
    }
}
