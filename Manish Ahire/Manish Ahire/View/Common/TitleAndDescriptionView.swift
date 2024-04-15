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
        VStack(alignment: .leading) {
            Text(title)
                .font(Fonts.black.size(15))
            .foregroundStyle(.blackSecondary)
          
            Text(description)
                .font(Fonts.regular.size(14))
                .padding(.vertical, 15)
                .padding(.horizontal, 15)
                .background(.whiteBackground)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(color: .black.opacity(0.05), radius: 5)
        }
        .frame(width: .infinity)
    }
}

#Preview {
    TitleAndDescriptionView(title: .constant("Who am i?"), description: .constant("Hello there! I’m Manish Ahire, a passionate mobile and web application developer based in the vibrant city of Education, Pune, India. With a primary focus on mobile app development, I bring a wealth of experience in both the front-end and back-end realms of web applications."))
}
