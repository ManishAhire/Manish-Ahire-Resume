//
//  SkillRow.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 17/05/24.
//

import SwiftUI

struct SkillRow: View {
    
    @Binding var skill: SkillsInfo
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(skill.section)
                .font(Fonts.bold.size(20))
                .foregroundStyle(AssetColor.blackLabels.color)
            
            ForEach(Array(skill.skills.enumerated()), id: \.element) { _, data in
                
                HStack {
                    Circle()
                        .frame(width: 5, height: 5)
                    
                    Text(data)
                        .font(Fonts.regular.size(15))
                        .foregroundStyle(AssetColor.blackSecondary.color)
                }
                .padding(.leading, 10)
               
            }
        }
        .padding()
        .padding(.top, 5)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .leading)
        .background(AssetColor.whiteBackground.color)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: .black.opacity(0.05),radius: 5)
        
    }
}

#Preview {
    SkillRow(skill: .constant(SkillsInfo(section: "Test", skills: ["Test", "Test", "Test"])))
}
