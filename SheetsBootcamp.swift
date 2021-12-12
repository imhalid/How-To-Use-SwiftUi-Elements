//
//  SheetsBootcamp.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by Halid İçli on 12.12.2021.
//

import SwiftUI

struct SheetsBootcamp: View {
    @State var showSheet : Bool = false
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.cyan)
                .ignoresSafeArea()
            
                Button {
                    showSheet.toggle()
                } label: {
                    ZStack {
                        
                        Rectangle()
                            .frame(width: 100, height: 40)
                            .foregroundColor(.black)
                            .cornerRadius(15)
                        Text("Gracia")
                            .foregroundColor(.white)
                        
                    }
                    
                        
                }
                .fullScreenCover(isPresented: $showSheet, onDismiss: nil, content: {
                    SeconderyView(showSheet: $showSheet)
                })
//                .sheet(isPresented: $showSheet, onDismiss: nil) {
//                    SeconderyView(showSheet: $showSheet) }
            }
            
        }

    }

struct SeconderyView: View {
    @Binding var showSheet : Bool
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.indigo)
            .ignoresSafeArea()
            Button {
                showSheet.toggle()
            } label: {
                ZStack {
                    
                    Image(systemName: "x.circle.fill")
                        
                        .font(.system(size: 70))
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
//        SeconderyView()
    }
}
