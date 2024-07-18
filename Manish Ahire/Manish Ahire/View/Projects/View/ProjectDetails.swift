//
//  ProjectDetails.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 18/07/24.
//

import SwiftUI

struct ProjectDetails: View {
    
    var project: Project
    
    var body: some View {
        
        let screenSize = UIScreen.main.bounds
        
        VStack(alignment: .center) {
            
            Image(project.image)
                .resizable()
                .scaledToFill()
                .frame(width: screenSize.width * 0.75, height: screenSize.height * 0.5)
                .cornerRadius(2)
                .clipped()
            
            Spacer(minLength: 0)

            Text(project.description)
                .font(Fonts.bold.size(14))
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(AssetColor.blackLabels.color)
                .padding(.top, 8)

            Spacer(minLength: 0)

            Text(project.pagination)
                .font(Fonts.black.size(12))
                .frame(maxWidth: .infinity, alignment: .trailing)
                .foregroundStyle(AssetColor.orangeTitle.color)
                .padding([.top, .bottom], 8)

            Spacer(minLength: 0)
        }
        .frame(
            width: screenSize.width * 0.78,
            height: screenSize.height * (getDeviceType() == .iphoneSE ? 0.7 : 0.75)
        )
        .padding(.top)
        .padding([.leading, .trailing], 8)
        .background {
            ZStack(alignment: .leading) {
                RectangleBackground()
            }
        }
    }
}

#Preview {
    ProjectDetails(project:
                    Project(
                        image: "HSBC",
                        description: "HSBC MyDeal: MyDeal is a digital platform solution to optimize our client experience when conducting a Capital Markets transaction with HSBC. MyDeal centralizes valuable data from multiple channels, providing clients with controlled access to current and historical deal information. This intelligent application gives access to real-time deal information on the go.",
                        pagination: ""
                    ))
}
