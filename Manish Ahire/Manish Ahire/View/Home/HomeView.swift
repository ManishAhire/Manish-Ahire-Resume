//
//  HomeView.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 28/02/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        TabView {
            
            AboutMeView()
                .tabItem {
                    Image(.user)
                        .renderingMode(.template)
                    Text("About Me")
                }
            
            Experience()
                .tabItem {
                    Image(.book)
                        .renderingMode(.template)
                    Text("Experience")
                }
            
            Skills()
                .tabItem {
                    Image(.trophy)
                        .renderingMode(.template)
                    Text("Skills")
                }
            
            Education()
                .tabItem {
                    Image(.motherboard)
                        .renderingMode(.template)
                    Text("Education")
                }
            
            Projects()
                .tabItem {
                    Image(.envelope)
                        .renderingMode(.template)
                        
                    Text("Projects")
                        
                }
            
        }
        .tint(AssetColor.orangeIcon.color)
    }
}

#Preview {
    HomeView()
}
