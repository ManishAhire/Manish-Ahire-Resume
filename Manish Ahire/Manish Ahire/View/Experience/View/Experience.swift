//
//  Experience.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 04/03/24.
//

import SwiftUI

struct Experience: View {
    
    private var title: String = "Professional Path 🧑‍💻"
    private var experienceViewModel = ExperienceViewModel()
    @State var experienceDetails: [ExperienceDetails] = []
    
    var body: some View {
        
        VStack(alignment: .leading) {
            TitleView(title: .constant(title))
            
            ScrollView() {
                ForEach(experienceDetails) { data in
                    ExperienceRow(experience: .constant(data))
                }
            }
            .scrollIndicators(.hidden)
            
        }
        .padding()
        .background(
            LinearGradient(
                gradient: Gradient(colors: [
                    AssetColor.firstGradientColor.color,
                    AssetColor.secondGradientColor.color
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .onAppear() {
            experienceDetails = experienceViewModel.getExperienceDetails()
        }
    }
}

#Preview {
    Experience()
}
