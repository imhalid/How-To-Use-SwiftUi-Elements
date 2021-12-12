//
//  TernaryOperators.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by Halid İçli on 10.12.2021.
//

import SwiftUI

struct TernaryOperators: View {
    
    @State var isSwitch: Bool = true
    
    var body: some View {
        VStack {
            Button {
                isSwitch.toggle()
            } label: {
                Text("Change: \(isSwitch.description)")
            }.padding()
            Circle()
                .foregroundColor(isSwitch ? .teal : .brown)
                .frame(width: 100, height: 100)
                Text(isSwitch ? "Hello" : "Bye Bye") // this
            
            Spacer()
        }
    }
}

struct TernaryOperators_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperators()
            
    }
}
