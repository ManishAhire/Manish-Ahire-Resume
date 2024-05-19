//
//  AboutViewModel.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 04/03/24.
//

import Foundation

class AboutViewModel {
    
    func fetchData() -> [AboutMe] {
        return [
            
            AboutMe(
                title: "Who am i?",
                description: "Hello there! I’m Manish Ahire, a passionate mobile and web application developer based in the vibrant city of Education, Pune, India. With a primary focus on mobile app development, I bring a wealth of experience in both the front-end and back-end realms of web applications."
            ),
            
            AboutMe(
                title: "Who am I looking for?",
                description: "I am looking for an iOS developer position on exciting projects that will provide challenges and user-centric solutions. I can't wait to create something that will have an impact on people's lives! 📱⌚️"
            )
        ]
    }
}
