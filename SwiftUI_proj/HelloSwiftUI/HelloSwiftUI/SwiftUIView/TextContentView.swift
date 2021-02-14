//
//  TextContentView.swift
//  HelloSwiftUI
//
//  Created by USER on 2021/02/15.
//

import SwiftUI

struct TextContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            Text("폰트와 굵기 설정")
                .font(.title)
                .fontWeight(.black)
                
            let backgroundColor = Color.blue
            
            Text("글자색은 foreground, 배경은 background")
                .foregroundColor(.white)
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
                .background(backgroundColor)
            
            Text("커스텀 폰트, 볼드체, 이탤릭체, 밑줄, 취소선")
                .font(.custom("Menlo", size: 16))
                .bold()
                .italic()
                .underline()
                .strikethrough()
            
            Text("라인 수 제한과 \n 텍스트 정렬 기능입니다. \n 이건 안 보입니다.")
                .fixedSize()
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.trailing)
                .lineLimit(2)
            
            (Text("자간과 기준선").kerning(10)
                + Text(" 조정도 쉽게 가능합니다.").baselineOffset(8))
                .font(.system(size: 16))
        }
    }
}

struct TextContentView_Previews: PreviewProvider {
    static var previews: some View {
        TextContentView()
    }
}
