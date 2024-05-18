//
//  SkillsViewModel.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 17/05/24.
//

import Foundation

class SkillsViewModel {
    
    func fetchSkills() -> [SkillsInfo] {
        
        return [
        
            SkillsInfo(
                section: "Tech Skill",
                skills: [
                    "Swift",
                    "SwiftUI",
                    "React Native",
                    "Unit Test",
                    "UI Test",
                    "DevOps (CI/CD, Jenkins, Ansible)"
                ]
            ),
            
            SkillsInfo(
                section: "Utilites",
                skills: [
                    "XCode",
                    "VS Code",
                    "Git",
                    "Github",
                    "Bitbucket",
                    "Sourcetree",
                    "Agile",
                    "Scrum",
                    "Jira",
                    "Kanban",
                    "Trello",
                    "Notion",
                    "Figma"
                ]
            )
        ]
    }
}
