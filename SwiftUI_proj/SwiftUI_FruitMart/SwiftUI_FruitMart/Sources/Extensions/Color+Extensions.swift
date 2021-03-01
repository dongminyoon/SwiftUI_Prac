//
//  Color+Extensions.swift
//  SwiftUI_FruitMart
//
//  Created by 윤동민 on 2021/03/01.
//

import SwiftUI

extension Color {
    static let peach = Color("peach")
    static let primaryShadow = Color.primary.opacity(0.2)
    static let secondaryText = Color(hexString: "#6e6e6e")
    static let background = Color(UIColor.systemGray6)
    
    init(hexString: String, alpha: CGFloat = 1.0) {
        var hexString = hexString.trimmingCharacters(in: .whitespacesAndNewlines)
        if hexString.hasPrefix("#") { hexString.removeFirst() }
        
        let scanner = Scanner(string: hexString)
        var color: UInt64 = 0
        scanner.scanHexInt64(&color)
       
        let mask = 0xFF
        
        let red     = Int(color >> 16) & mask
        let green   = Int(color >> 8) & mask
        let blue    = Int(color) & mask
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    init(red: Int, green: Int, blue: Int, alpha: CGFloat = 1.0) {
        assert(red >= 0 && red <= 255, "Invalid Red Component")
        assert(green >= 0 && green <= 255, "Invalid Green Component")
        assert(blue >= 0 && blue <= 255, "Invalid Blue Component")
        
        self.init(UIColor(red:      CGFloat(red / 255),
                          green:    CGFloat(green / 255),
                          blue:     CGFloat(blue / 255),
                          alpha:    alpha))
    }
}
