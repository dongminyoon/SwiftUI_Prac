//
//  ProductRow.swift
//  SwiftUI_FruitMart
//
//  Created by 윤동민 on 2021/02/28.
//

import SwiftUI

struct ProductRow: View {
    let product: Product
    
    var body: some View {
        HStack {
            self.productImage
            self.productDescription
        }
        .frame(height: 150)
        .background(Color.primary.colorInvert())
        .cornerRadius(6)
        .shadow(color: Color.primary.opacity(0.33), radius: 1, x: 2, y: 2)
        .padding([.top, .bottom], 8)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
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
        }
    }
}

extension ProductRow {
    var productImage: some View {
        Image(self.product.imageName ?? "")
            .resizable()
            .scaledToFill()
            .frame(width: 140)
            .clipped()
    }
    
    var productDescription: some View {
        VStack(alignment: .leading) {
            Text(self.product.name ?? "")
                .font(.headline)
                .fontWeight(.medium)
                .padding(.bottom, 6)
            
            Text("\(self.product.description ?? "")")
                .font(.footnote)
                .foregroundColor(.secondary)
            
            Spacer()
            
            self.footerView
        }
        .padding([.leading, .bottom], 12)
        .padding([.top, .trailing])
    }
    
    var footerView: some View {
        HStack {
            Text("₩").font(.footnote) + Text("\(self.product.price ?? 0)").font(.headline)
            
            Spacer()
            
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundColor(Color("peach"))
                .frame(width: 32, height: 32)
            
            Image(systemName: "cart")
                .foregroundColor(Color("peach"))
                .frame(width: 32, height: 32)
        }
    }
}
