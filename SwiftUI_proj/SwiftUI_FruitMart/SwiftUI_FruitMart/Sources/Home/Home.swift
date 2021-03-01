//
//  Home.swift
//  SwiftUI_FruitMart
//
//  Created by 윤동민 on 2021/02/28.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            Color(hexString: "#ffffff")
            
            ProductRow(product: Product(name:           "",
                                        imageName:      "",
                                        price:          10,
                                        description:    "aa",
                                        isFavorite:     false))
            ProductRow(product: Product(name:           "",
                                        imageName:      "유나",
                                        price:          1000000,
                                        description:    "유나는 엄지공주",
                                        isFavorite:     true))
            ProductRow(product: Product(name:           "",
                                        imageName:      "유나",
                                        price:          1000000,
                                        description:    "유나는 엄지공주",
                                        isFavorite:     true))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
