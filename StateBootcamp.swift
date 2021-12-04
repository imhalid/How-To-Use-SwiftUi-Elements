//
//  StateBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by Halid İçli on 4.12.2021.
//

import SwiftUI

struct StateBootcamp: View {

    @State var BgColor: Color = Color.gray
    @State var count: Int = 0
    @State var kotlin: Bool = false
    @State var images: Image = Image(systemName: "book.fill")
    
    func iconChange() {
        if kotlin == true {
            images = Image(systemName: "chevron.up.circle.fill")
        } else {
            images = Image(systemName: "chevron.down.circle.fill")
        }

    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(
                    Color.orange.opacity(0.2)
                ).ignoresSafeArea()
            VStack {
                Text("\(count)")
                    .font(.largeTitle)
                    .underline()
                    .bold()
                    .italic()
                HStack {
                    Circle()
                        .frame(width: 60, height: 60)
                        .foregroundColor(BgColor)
                        .overlay(
                            images.foregroundColor(.white)
                                .shadow(radius: 3)
                        )
                        .shadow(radius: 1)
                }
                Button {
                    kotlin = true
                    iconChange()
                    count += 1
                    BgColor = Color.green
                } label: {
                    Text("Gooo")
                        .padding(.vertical, 5)
                        .padding(.horizontal, 7)
                        .background(Color("ColorGreen"))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                    
                }.padding(.bottom, 3)
                    .background(Color.green)
                    .cornerRadius(10)
                
                Button {
                    kotlin = false
                    iconChange()
                    count -= 1
                    BgColor = Color.red
                } label: {
                    Text("Backkkk")
                        .padding(.vertical, 5)
                        .padding(.horizontal, 7)
                        .background(Color("ColoRed"))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                    
                }.padding(.bottom, 3)
                    .background(Color.red)
                    .cornerRadius(10)

            }
            
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
