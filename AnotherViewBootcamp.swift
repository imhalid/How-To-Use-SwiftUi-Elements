//
//  AnotherViewBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by Halid İçli on 9.12.2021.
//

import SwiftUI

struct AnotherViewBootcamp: View {
    @State var counter: Int = 1

    var body: some View {
        ZStack {
            Rectangle().foregroundColor(.indigo).ignoresSafeArea()
            VStack {
                ImageShingeki()
                    .offset(x: CGFloat(counter))
                if counter >= 0 {
                    Text("\(counter)")
                        .bold()
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                    .padding(1)
                } else {
                    Text("Oppss...")
                }
                HStack {
                    ButtonStyle(counter: $counter, color: .yellow, title: "Artır")
                    ButtonStyle(counter: $counter, color: .orange, title: "Eksilt")
                    
                }
            }
        }
    }
}

struct AnotherViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnotherViewBootcamp()
    }
}

struct ImageShingeki: View {
    var body: some View {
        Image("shingeki")
            .resizable()
            .scaledToFit()
            .padding(15)
    }
}

struct ButtonStyle: View {
    @Binding var counter: Int
    let color: Color
    let title: String
    var body: some View {
        Button {
            if color == Color.yellow {
                counter += 1
            } else {
                counter -= 1
            }
        } label: {
            ZStack {
                Rectangle().foregroundColor(color)
                    .frame(width: 70, height: 30)
                    .cornerRadius(8)
                Text(title)
                    .foregroundColor(.black)
            }
        }
    }
}
