//
//  Product.swift
//  SwiftUI_FruitMart
//
//  Created by 윤동민 on 2021/03/01.
//

import Foundation

struct Product: Codable {
    var name: String?
    var imageName: String?
    var price: Int?
    var description: String?
    var isFavorite: Bool?
}
