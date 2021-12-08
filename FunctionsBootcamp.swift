//
//  FunctionsBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by Halid İçli on 7.12.2021.
//

import SwiftUI

struct FunctionsBootcamp: View {
    
   @State var textBody: String = "Press Me"
   @State var color: Color = Color.black

    
    var body: some View {
        
        VStack {
            Text(textBody)
                .font(.largeTitle)
                .shadow(radius: 6)
            buttonCustom

        }
        
    }
    var buttonCustom: some View {
        Button {
            changeColorAndText()
        } label: {
            Text(textBody)
                .padding(5)
                .background(color)
                .foregroundColor(.white)
                .cornerRadius(8)
                
        }
    }
    
    func changeColorAndText() {
        color = Color.indigo
        textBody = "Good job"
    }
}


    


struct FunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Rectangle().ignoresSafeArea()
                .foregroundColor(.orange.opacity(0.2))
            FunctionsBootcamp()
            
        }
        
            
    }
}
