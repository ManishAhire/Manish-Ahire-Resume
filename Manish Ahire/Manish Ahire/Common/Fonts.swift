//
//  Fonts.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 04/03/24.
//

import SwiftUI

enum Fonts: String {
    
    case black = "Nunito-Black"
    case bold = "Nunito-Bold"
    case extraBold = "Nunito-ExtraBold"
    case extraLight = "Nunito-ExtraLight"
    case light = "Nunito-Light"
    case medium = "Nunito-Medium"
    case regular = "Nunito-Regular"
    case semiBold = "Nunito-SemiBold"

    func size(_ size: CGFloat) -> Font {
        Font.custom(self.rawValue, size: size)
    }
}
