//
//  BackgroundView.swift
//  HelloSwiftUI
//
//  Created by 윤동민 on 2021/02/28.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Rectangle().fill(Color.yellow).frame(width: 150, height: 150)
            .background(Rectangle().fill(Color.green))
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
