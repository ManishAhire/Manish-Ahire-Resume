//
//  HireMeButton.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 16/05/24.
//

import SwiftUI

struct HireMeButton: View {
    
    @Binding var menuItems: [MenuItem]
    
    var body: some View {
        Menu {
            ForEach(menuItems) { menu in
                
                if let subMenus = menu.subMenuItems {
                    Menu {
                        
                        ForEach(subMenus) { subMenu in
                            Button(subMenu.title) {
                                subMenu.action?(subMenu.actionType ?? .none)
                            }
                        }
                        
                    } label: {
                        Image(menu.icon ?? "")
                            .renderingMode(.template)
                            .foregroundStyle(AssetColor.blackLabels.color)
                        Text(menu.title)
                            .font(Fonts.semiBold.size(11))
                            .foregroundStyle(AssetColor.blackLabels.color)
                    }
                } else {
                    if let url = menu.link {
                        Link(menu.title, destination: url)
                    }
                }
            }
            
        } label: {
            Text("Hire Me")
                .font(Fonts.black.size(18))
                .padding(.vertical, 5)
                .padding(.horizontal, 15)
                .foregroundStyle(.white)
                .background(AssetColor.orangeIcon.color)
                .clipShape(RoundedRectangle(cornerRadius: 25))
        }
        .onAppear() {
            
        }
    }
}

#Preview {
    HireMeButton(menuItems: .constant([MenuItem(title: "Test")]))
}
