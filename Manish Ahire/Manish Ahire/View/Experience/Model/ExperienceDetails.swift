//
//  ExperienceDetails.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 17/05/24.
//

import Foundation

struct ExperienceDetails: Identifiable {
    var id = UUID()
    let title: String
    let companyName: String
    let bulletPoints: [String]
}
