//
//  ButtonBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by Halid İçli on 3.12.2021.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    @State var myInteger: Int = 80
    var body: some View {
        VStack{
            Text("\(myInteger)")
            
            Button {
                myInteger += 1
            } label: {
                Text("Count")
            }

        }
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
