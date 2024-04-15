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
            
            TitleAndDescriptionView (
                title: .constant("My contact details🤙"),
                description: .constant(
                    "💌 ahiremanishb@gmail.com \n 📱 +91 87938 38402")
            )
            
            
            VStack(alignment: .leading) {
                Text("My contact details🤙")
                    .font(Fonts.black.size(15))
                    .foregroundStyle(.blackSecondary)
                
                VStack(alignment: .leading) {
                    Text("ahiremanishb@gmail.com")
                        .multilineTextAlignment(.leading)
                    Text("+91 87938 38402")
                }
                .font(Fonts.regular.size(14))
                .frame(maxWidth: .infinity)
                .padding(.vertical, 10)
                .padding(.horizontal, 15)
                .background(.whiteBackground)
            }
            .frame(maxWidth: .infinity)
            
            
            Spacer()
        }
        .padding()
        .background(.secondGradient)
        .onAppear() {
            aboutVM.fetchData()
        }
    }
}

#Preview {
    AboutMeView()
}
