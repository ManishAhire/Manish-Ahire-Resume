//
//  View+Extension.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 18/07/24.
//

import SwiftUI

enum DeviceType {
    case iphoneSE
    case iphoneMidSize
    case iphoneMax
    case other
}

extension View {
    func hideNativeTabBar() -> some View {
        self.toolbar(.hidden, for: .tabBar)
    }

    func getDeviceType() -> DeviceType {
        let screenSize = UIScreen.main.bounds.size
        let screenHeight = max(screenSize.width, screenSize.height)

        switch screenHeight {
        case 667:
            return .iphoneSE
        case 812, 852, 896:
            return .iphoneMidSize
        case 932, 844, 780:
            return .iphoneMax
        default:
            return .other
        }
    }
}

