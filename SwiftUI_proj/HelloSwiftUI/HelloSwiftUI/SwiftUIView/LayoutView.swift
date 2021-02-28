//
//  LayoutView.swift
//  HelloSwiftUI
//
//  Created by 윤동민 on 2021/02/27.
//

import SwiftUI

struct LayoutView: View {
    var body: some View {
        VStack {
            Text("도형 만들기").font(.largeTitle).fontWeight(.bold)
            
            HStack {
                Text("둥근 모양").font(.title)
                Spacer()
            }
            
            ZStack {
                Rectangle().frame(height: 10)
                
                HStack {
                    Circle().fill(Color.yellow)
                    Ellipse().fill(Color.green)
                    Capsule().fill(Color.blue)
                    RoundedRectangle(cornerRadius: 20).fill(Color.red)
                }
            }
            
            HStack {
                Text("각진 모양").font(.title)
                Spacer()
            }
            
            ZStack {
                Rectangle().frame(height: 10)
                
                HStack {
                    Color.red
                    Rectangle().fill(Color.blue)
                    RoundedRectangle(cornerRadius: 20).fill(Color.purple)
                }
            }
        }.padding()
    }
}

struct LayoutView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutView()
    }
}
