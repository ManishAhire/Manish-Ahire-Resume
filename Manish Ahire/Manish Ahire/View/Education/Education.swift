//
//  Education.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 04/03/24.
//

import SwiftUI

struct Education: View {
    
    var body: some View {
        
        NavigationStack {
            VStack() {
                TitleView(title: .constant("Education 🧑‍🏫"))
                
                ScrollView() {
                    
                    HStack {
                        Image("education")
                            .frame(width: 40, height: 40)
                        
                        Text("My Education")
                            .font(Fonts.black.size(18))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundStyle(AssetColor.blackSecondary.color)
                    }
                    .padding(.top, 10)
                    
                    VStack {
                        
                        getInstitute(title: "Fergusson College, Pune, India - 411004")
                        getRow(text: "2013 - 2015")
                        getRow(text: "Master's in Computer Science")
                        
                    }
                    .padding(.top, 10)
                    
                    VStack {
                        
                        getInstitute(title: "K.A.A.N.M. Sonawane Arts, Science and Commerce College, Satana, Nashik, India - 423301")
                        getRow(text: "2013 - 2015")
                        getRow(text: "Master's in Computer Science")
                        
                    }
                    .padding(.top, 10)
                    
                    MyCertificates()
                        .padding(.top, 10)
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
        }
    }
    
    func getInstitute(title: String) -> some View {
        Text(title)
            .font(Fonts.bold.size(18))
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundStyle(AssetColor.blackLabels.color)
            .padding(.bottom, 5)
    }
    
    func getRow(text: String) -> some View {
        HStack {
            
            Circle()
                .frame(width: 5, height: 5)
                .foregroundStyle(AssetColor.blackLabels.color)
            
            Text(text)
                .font(Fonts.semiBold.size(13))
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(AssetColor.grayLabels.color)
        }
    }
}

#Preview {
    Education()
}
