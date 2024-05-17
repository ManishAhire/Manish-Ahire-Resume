//
//  TitleView.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 04/03/24.
//

import SwiftUI

struct TitleView: View {
    
    @Binding var title: String
    @State var menuItems: [MenuItem] = []
    
    var body: some View {
        HStack {
            Text(title)
                .foregroundStyle(AssetColor.blackSecondary.color)
                .font(Fonts.black.size(20))
            Spacer()
            
            HireMeButton(menuItems: $menuItems)
        }
        .onAppear() {
            menuItems = Contact().fetchData()
        }
    }
}

#Preview {
    TitleView(title: .constant("About Me"), menuItems: [MenuItem(title: "Test")])
}
