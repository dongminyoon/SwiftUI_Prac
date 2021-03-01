//
//  ButtonView.swift
//  HelloSwiftUI
//
//  Created by 윤동민 on 2021/03/01.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        HStack(spacing: 20) {
            Button(action: {
                print("Button Clicked")
            }, label: {
                Image("swiftui")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 100, height: 100)
            })
            .buttonStyle(PlainButtonStyle())
            
            
            Button(action: {
                print("Button Clicked")
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
            })
            
            Button(action: {
                print("Button Clicked")
            }, label: {
                Circle()
                    .strokeBorder(lineWidth: 2)
                    .frame(width: 80, height: 80)
                    .overlay(Text("Button"))
            })
            .accentColor(.green)
            
            Image("swiftui")
                .resizable()
                .frame(width: 100, height: 100)
                .onTapGesture {
                    print("Swift UI")
                }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
