//
//  AboutMeView.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 29/02/24.
//

import SwiftUI

struct AboutMeView: View {
    
    private var title: String = "About Me🤔"
    private var aboutVM : AboutViewModel = AboutViewModel()
    @State var aboutMe: [AboutMe] = []
    
    var body: some View {
        VStack(alignment: .leading) {
            
            TitleView(title: .constant(title))
            
            ScrollView() {
                ForEach(aboutMe) { data in
                    AboutMeRow(aboutMe: .constant(data))
                }
                
                ContactDetails()
                    .padding(.top, 4)
                
                LocationDetails()
                    .padding(.top, 4)
            }
            .scrollIndicators(.hidden)
        }
        .padding()
        .background(
            LinearGradient(
                gradient: Gradient(colors: [
                    AssetColor.firstGradientColor.color,
                    AssetColor.secondGradientColor.color
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .onAppear() {
           aboutMe = aboutVM.fetchData()
        }
    }
}

#Preview {
    AboutMeView()
}
