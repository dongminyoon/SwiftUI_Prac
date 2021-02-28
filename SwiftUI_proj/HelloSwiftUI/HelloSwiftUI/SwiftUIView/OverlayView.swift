//
//  OverlayView.swift
//  HelloSwiftUI
//
//  Created by 윤동민 on 2021/02/28.
//

import SwiftUI

struct OverlayView: View {
    var body: some View {
        Rectangle().fill(Color.green).frame(width: 150, height: 150)
            .overlay(Rectangle().fill(Color.yellow).frame(width: 50, height: 50))
    }
}

struct OverlayView_Previews: PreviewProvider {
    static var previews: some View {
        OverlayView()
    }
}
