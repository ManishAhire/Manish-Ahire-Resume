//
//  ExperienceRow.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 17/05/24.
//

import SwiftUI

struct ExperienceRow: View {
    
    @Binding var experience : ExperienceDetails
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(experience.title)
                .font(Fonts.bold.size(20))
                .foregroundStyle(AssetColor.blackLabels.color)
                .padding(.bottom, 5)
            
            Text(experience.companyName)
                .font(Fonts.bold.size(14))
                .foregroundStyle(AssetColor.blackLabels.color)
                .padding(.bottom, 5)
            
            ForEach(Array(experience.bulletPoints.enumerated()), id: \.element) { _, point in
                
                HStack() {
                    
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundStyle(AssetColor.blackLabels.color)
                        .padding(.top, 6)
                    
                    
                    Text(point)
                        .font(Fonts.semiBold.size(14))
                        .foregroundStyle(AssetColor.grayLabels.color)
                        .lineLimit(nil)
                }
                .padding(.trailing)
                .padding(.leading, 10)
            }
        }
        .padding()
        .background(AssetColor.whiteBackground.color)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: .black.opacity(0.05), radius: 5)
    }
}

#Preview {
    ExperienceRow(experience: .constant(ExperienceDetails(title: "Test", companyName: "Test", bulletPoints: ["Test"])))
}
