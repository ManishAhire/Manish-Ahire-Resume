//
//  Projects.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 04/03/24.
//

import SwiftUI

struct Projects: View {
    
    @ObservedObject var projectVM = ProjectsVM()
    
    
    var body: some View {
        
        VStack {
            
            TitleView(title: .constant("Projects 📱"))
            
            ScrollView(.horizontal) {
                
                LazyHStack(spacing: 10) {
                    ForEach(projectVM.projects) { project in
                        ProjectDetails(project: project)
                    }
                }
            }
        }
        .padding()
        .background(
            LinearGradient(
                gradient: Gradient(colors: [AssetColor.firstGradientColor.color, AssetColor.secondGradientColor.color]),
                startPoint: .top,
                endPoint: .bottom)
        )
        .onAppear() {
            
            DispatchQueue.main.async {
                projectVM.getProjects()
            }
            
        }
    }
}

#Preview {
    Projects()
}
