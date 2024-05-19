//
//  ContactDetails.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 16/05/24.
//

import SwiftUI

struct ContactDetails: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("My contact details🤙")
                .padding(.top, 4)
                .font(Fonts.black.size(16))
                .foregroundStyle(AssetColor.blackSecondary.color)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("ahiremanishb@gmail.com")
                Text("+91 87938 38402")
            }
            .font(Fonts.regular.size(15))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding([.vertical, .horizontal], 15)
            .background(AssetColor.whiteBackground.color)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .black.opacity(0.05), radius: 5)
            .foregroundStyle(AssetColor.blackLabels.color)
        }
    }
}

#Preview {
    ContactDetails()
}
