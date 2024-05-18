//
//  Skills.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 04/03/24.
//

import SwiftUI

struct Skills: View {
    
    private var skillsViewModel = SkillsViewModel()
    @State var skills : [SkillsInfo] = []
    
    var body: some View {
        VStack() {
            TitleView(title: .constant("My Skills 📚"))
            
            ScrollView() {
                
                ForEach(skills) { skill in
                    
                    SkillRow(skill: .constant(skill))
                    
                }
            }
            .scrollIndicators(.hidden)
        }
        .padding()
        .background(
            LinearGradient(
                gradient: Gradient(colors: [AssetColor.firstGradientColor.color, AssetColor.secondGradientColor.color]),
                startPoint: .top,
                endPoint: .bottom)
        )
        .onAppear() {
            skills = skillsViewModel.fetchSkills()
        }
    }
}

#Preview {
    Skills()
}
