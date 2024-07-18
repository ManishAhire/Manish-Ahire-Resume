//
//  RectangleBackground.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 18/07/24.
//

import SwiftUI

struct RectangleBackground: View {
    var body: some View {
        Rectangle()
            .cornerRadius(15)
            .foregroundStyle(AssetColor.whiteBackground.color)
            .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 0)
    }
}

#Preview {
    RectangleBackground()
}
