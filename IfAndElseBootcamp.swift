//
//  IfAndElseBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by Halid İçli on 10.12.2021.
//

import SwiftUI

struct IfAndElseBootcamp: View {
    @State var counter: Int = 0
    var body: some View {
        VStack {
            Spacer()
            if ((counter % 2) == 0) {
                Circle()
                    .frame(width: 80, height: 80)
            } else {
                Rectangle()
                    .frame(width: 80, height: 80)
            }
            Spacer()
            Text("\(counter)")
                .bold()
                .font(.system(size: 35))
            
            HStack{
                myButton(counter: $counter, bColor: .brown,  bTitle: "Artır")
                myButton(counter: $counter, bColor: .orange,  bTitle: "Eksilt")

            }
            Spacer()
        }
    }
}


struct myButton: View {
    @Binding var counter: Int
    var bColor: Color
    var bTitle: String
    
    var body: some View {
        Button {
            if bTitle == "Artır" {
                counter += 1
            } else if bTitle == "Eksilt" {
                counter -= 1
            }
        } label: {
            ZStack {
                Rectangle()
                    .frame(width: 60, height: 30)
                    .foregroundColor(bColor)
                    .cornerRadius(9)
                Text(bTitle)
                    .foregroundColor(.white)
            }
            .padding(.bottom, 5)
            .background(Color.red)
            .cornerRadius(9)
        }
    }
}


struct IfAndElseBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfAndElseBootcamp()
    }
}
