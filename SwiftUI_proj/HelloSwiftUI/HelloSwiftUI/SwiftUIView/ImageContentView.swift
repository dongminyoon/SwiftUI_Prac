//
//  ImageContentView.swift
//  HelloSwiftUI
//
//  Created by 윤동민 on 2021/02/27.
//

import SwiftUI

struct ImageContentView: View {
    var body: some View {
        let imageName = "swiftui"
        
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5) {
            Image("swiftui").renderingMode(.template)
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
                .foregroundColor(.black)
            
            Image("swiftui").renderingMode(.template)
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
                .foregroundColor(.red)
            
            Image("swiftui").renderingMode(.original)
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
                .foregroundColor(.orange)
        }
    }
}

struct ImageContentView_Previews: PreviewProvider {
    static var previews: some View {
        ImageContentView()
    }
}
