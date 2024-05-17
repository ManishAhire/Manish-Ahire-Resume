//
//  TitleAndDescriptionView.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 04/03/24.
//

import SwiftUI

struct TitleAndDescriptionView: View {
    @Binding var title: String
    @Binding var description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(Fonts.black.size(16))
                .foregroundStyle(AssetColor.blackSecondary.color)
            
            Text(description)
                .font(Fonts.regular.size(15))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical, 15)
                .padding(.horizontal, 15)
                .background(AssetColor.whiteBackground.color)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: .black.opacity(0.05), radius: 5)
                .foregroundStyle(AssetColor.blackLabels.color)
        }
    }
}

#Preview {
    TitleAndDescriptionView(title: .constant("Who am i?"), description: .constant("Hello there! I’m Manish Ahire, a passionate mobile and web application developer based in the vibrant city of Education, Pune, India. With a primary focus on mobile app development, I bring a wealth of experience in both the front-end and back-end realms of web applications."))
}
