//
//  FullScreenImage.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 18/07/24.
//

import SwiftUI

struct FullScreenImage: View {
    
    var imageName: String
    
    var body: some View {
        
        if let image = UIImage(named: imageName) {
            Image(uiImage: image)
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    FullScreenImage(imageName: "Reactive Programming Rxswift.jpg")
}
