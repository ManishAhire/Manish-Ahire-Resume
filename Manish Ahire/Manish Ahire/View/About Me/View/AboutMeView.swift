//
//  AboutMeView.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 29/02/24.
//

import SwiftUI

struct AboutMeView: View {
    
    private var title: String = "About Me🤔"
    
    @ObservedObject var aboutVM : AboutViewModel = AboutViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            
            TitleView(title: .constant(title))
            
            ForEach(aboutVM.qaData, id: \.id) {
                TitleAndDescriptionView(
                    title: .constant($0.question),
                    description: .constant($0.answer)
                )
            }
            
            ContactDetails()
                .padding(.top, 5)
            
            LocationDetails()
                .padding(.top, 5)
            
            
            Spacer()
        }
        .padding()
        .background(
            LinearGradient(
                gradient: Gradient(colors: [
                    AssetColor.firstGradientColor.color,
                    AssetColor.secondGradientColor.color
                ]),
                startPoint: .top,
                endPoint: .bottom)
        )
        .onAppear() {
            aboutVM.fetchData()
        }
    }
}

#Preview {
    AboutMeView()
}
