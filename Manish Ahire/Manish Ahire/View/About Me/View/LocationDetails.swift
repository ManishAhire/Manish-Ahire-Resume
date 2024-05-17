//
//  LocationDetails.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 16/05/24.
//

import SwiftUI

struct LocationDetails: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Where do i live?")
                .font(Fonts.black.size(16))
                .foregroundStyle(AssetColor.blackSecondary.color)
            
            HStack() {
                Image("map")
                    .renderingMode(.template)
                    .foregroundStyle(AssetColor.blackLabels.color)
                Text("Pun, India")
                    .font(Fonts.regular.size(15))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 15)
            .background(AssetColor.whiteBackground.color)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .black.opacity(0.05), radius: 5)
            
        }
    }
}

#Preview {
    LocationDetails()
}
