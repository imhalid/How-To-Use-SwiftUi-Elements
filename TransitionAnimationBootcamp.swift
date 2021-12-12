//
//  TransitionAnimationBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by Halid İçli on 12.12.2021.
//

import SwiftUI

struct TransitionAnimationBootcamp: View {
    
    @State private var isAnimation : Bool = false
    
    var body: some View {
        VStack {
            Button {
                withAnimation {
                    isAnimation.toggle()
                }

            } label: {
                Text("animaton start: \(isAnimation.description)")
        }

            Spacer()

            if isAnimation {
                Rectangle()
                                .cornerRadius(30)
                                .foregroundColor(.red)
                                .frame(height: UIScreen.main.bounds.height * 0.2)
                                .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .leading)))
                                .animation(.easeIn, value: isAnimation)
            }
        }.edgesIgnoringSafeArea(.bottom)
        
        

    }
}

struct TransitionAnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionAnimationBootcamp()
    }
}
