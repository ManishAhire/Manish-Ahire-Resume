//
//  TitleAndDescriptionView.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 04/03/24.
//

import SwiftUI

struct AboutMeRow: View {
    
    @Binding var aboutMe: AboutMe
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 4) {
            
            Text(aboutMe.title)
                .padding(.top, 4)
                .font(Fonts.black.size(16))
                .foregroundStyle(AssetColor.blackSecondary.color)
            
            Text(aboutMe.description)
                .font(Fonts.regular.size(15))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 4)
                .padding([.vertical, .horizontal], 15)
                .background(AssetColor.whiteBackground.color)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: .black.opacity(0.05), radius: 5)
                .foregroundStyle(AssetColor.blackLabels.color)
        }
    }
}

#Preview {
    AboutMeRow(aboutMe: .constant(AboutMe(title: "Test", description: "Hello there! I’m Manish Ahire, a passionate mobile and web application developer based in the vibrant city of Education, Pune, India. With a primary focus on mobile app development, I bring a wealth of experience in both the front-end and back-end realms of web applications.")))
}
