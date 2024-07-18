//
//  MyCertificates.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 16/07/24.
//

import SwiftUI

struct MyCertificates: View {
    
    @State var isPresentPDF: Bool = false
    
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
            
            NavigationLink {
                if let fileURL = Bundle.main.url(forResource: "CertificateOfCompletion_iOS Development Architecture", withExtension: "pdf") {
                    PDFKitView(url: fileURL)
                }
            } label: {
                getRow(text: "iOS Development: Architecture")
            }
            
            NavigationLink {
                
                FullScreenImage(imageName: "Reactive Programming Rxswift.jpg")
               
            } label: {
                getRow(text: "Reactive Programming (RxSwift)")
            }
            
            NavigationLink {
                if let fileURL = Bundle.main.url(forResource: "Multithreading", withExtension: "pdf") {
                    PDFKitView(url: fileURL)
                }
            } label: {
                getRow(text: "iOS Development: Multithreading")
            }
            
            
            NavigationLink {
                FullScreenImage(imageName: "iOS Developerment.jpg")
            } label: {
                getRow(text: "The Complete iOS Developer")
                
            }
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
