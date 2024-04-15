//
//  TitleView.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 04/03/24.
//

import SwiftUI

struct TitleView: View {
    @Binding var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .foregroundStyle(.blackSecondary)
                .font(Fonts.black.size(20))
            Spacer()
            
            Text("Hire Me")
                .font(Fonts.black.size(18))
                .padding(.vertical, 5)
                .padding(.horizontal, 15)
                .foregroundStyle(.white)
                .background(.orangeIcon)
                .clipShape(RoundedRectangle(cornerRadius: 25))
        }
    }
}

#Preview {
    TitleView(title: .constant("About Me"))
}
