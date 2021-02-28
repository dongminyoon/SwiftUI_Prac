//
//  AlignmentView.swift
//  HelloSwiftUI
//
//  Created by 윤동민 on 2021/02/28.
//

import SwiftUI

struct AlignmentView: View {
    var body: some View {
        Circle()
            .fill(Color.yellow.opacity(0.8))
            .frame(width: 250, height: 250)
            .overlay(Text("Joystick").font(.largeTitle))
            .overlay(Image(systemName: "arrow.up").padding(), alignment: .top)
            .overlay(Image(systemName: "arrow.left").padding(), alignment: .leading)
            .overlay(Image(systemName: "arrow.right").padding(), alignment: .trailing)
            .background(Image(systemName: "arrow.down").padding(), alignment: .bottom)
    }
}

struct AlignmentView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentView()
    }
}
