//
//  SkillsModel.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 17/05/24.
//

import Foundation

struct SkillsInfo: Identifiable {
    var id = UUID()
    let section: String
    let skills: [String]
}
