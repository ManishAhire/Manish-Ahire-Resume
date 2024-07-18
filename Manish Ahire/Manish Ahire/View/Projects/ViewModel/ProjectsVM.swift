//
//  ProjectsVM.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 18/07/24.
//

import Foundation

class ProjectsVM: ObservableObject {
    
    @Published var projects : [Project] = []
    
    func getProjects() {
        
         projects = [
            
            Project(
                image: "HSBC",
                description: "HSBC MyDeal: MyDeal is a digital platform solution to optimize our client experience when conducting a Capital Markets transaction with HSBC. MyDeal centralizes valuable data from multiple channels, providing clients with controlled access to current and historical deal information. This intelligent application gives access to real-time deal information on the go.",
                pagination: ""
            ),
            
            Project(
                image: "Innergy Tuner",
                description: "Innergy Tuner: The Innergy Tuner is an interactive mood-enhancing and frequency-balancing tool. Your personally designed audio-visual sonic prescriptions are always on hand with the Innergy Tuner. It’s a virtual ’sonic emergency room’ in your hands.",
                pagination: ""
            ),
            
            Project(
                image: "CouplAR",
                description: "CouplAR: CouplAR revolutionized print media, seamlessly linking it to digital assets. Effortlessly increased textbooks, tutorials, and product content, increasing a 40% engagement and ensuring up-to-date accessibility without the need for QR codes or CDs.",
                pagination: ""
            ),
            
            Project(
                image: "MOP",
                description: "Managed Order Platform: Elevating Order Management to the Next Level. A cutting-edge solution designed to revolutionize order management processes. This dynamic app serves as a robust interface for users to seamlessly access and interact with orders within the Managed Order Platform.",
                pagination: ""
            ),
            
            Project(
                image: "JobLocator",
                description: "JobsLocator: JobsLocator app is a job portal for job search and posting, and recruiting talented candidates. Job recruiters, professionals, industry experts, skilled staff, and available job vacancies are available at your fingertips.",
                pagination: ""
            ),
        
        ]
        
        getTotalNumberOfItemList()
    }
    
    private func getTotalNumberOfItemList() {
        let total = projects.count
        projects = projects.enumerated().map { index, item in
            var newItem = item
            newItem.pagination = "\(index + 1)/\(total)"
            return newItem
        }
    }
}
