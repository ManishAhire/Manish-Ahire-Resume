//
//  MyCertificates.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 16/07/24.
//

import SwiftUI

struct MyCertificates: View {
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Image("certificate")
                    .frame(width: 40, height: 40)
                
                Text("My Certificates")
                    .font(Fonts.black.size(18))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(AssetColor.blackSecondary.color)
            }
            
            getRow(text: "iOS Development: Architecture")
            getRow(text: "Reactive Programming in iOS with RxSwift")
            getRow(text: "iOS Development: Threading and Grand Central Dispatch")
            getRow(text: "The Complete iOS 10 Developer")
        }
    }
    
    func getRow(text: String) -> some View {
        HStack {
            
            Circle()
                .frame(width: 5, height: 5)
                .foregroundStyle(AssetColor.blackLabels.color)
            
            Text(text)
                .font(Fonts.bold.size(18))
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundStyle(AssetColor.blackLabels.color)
                .underline()
        }
        .padding(.bottom, 5)
    }
}

#Preview {
    MyCertificates()
}
