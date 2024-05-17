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
                .font(Fonts.black.size(16))
                .foregroundStyle(AssetColor.blackSecondary.color)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("ahiremanishb@gmail.com")
                Text("+91 87938 38402")
            }
            .font(Fonts.regular.size(15))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.vertical, 10)
            .padding(.horizontal, 15)
            .background(.whiteBackground)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .black.opacity(0.05), radius: 5)
            .foregroundStyle(AssetColor.blackLabels.color)
        }
    }
}

#Preview {
    ContactDetails()
}
