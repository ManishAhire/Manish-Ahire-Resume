//
//  ExperienceViewModel.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 17/05/24.
//

import Foundation

class ExperienceViewModel {
    
    
    func getExperienceDetails() -> [ExperienceDetails] {
        
        return [
            
            ExperienceDetails(
                title: "Technical Analyst",
                companyName: "Coforge, March 2021 - Present",
                bulletPoints: [
                    "Collaborated with HSBC client, boosting their digital success with a 30% surge in online customer engagement.",
                    "Implemented Transmit SDK for Secure Authentication, eliminating Hard Token devices, reducing authentication-related tickets by 40%.",
                    "Implemented SSL Pinning and Shield Framework, reducing security breaches by 50% and data tampering incidents by 60%.",
                    "Enhanced product quality through 100+ code reviews, 40+ unit tests, and 20+ UI tests, ensuring reliability and user satisfaction.",
                    "Prepared accessibility, ensuring a seamless experience for blind users and achieving a 30% increase in overall app usability.",
                    "Implemented Automatic Reference Counting (ARC) for precise memory management, resulting in a 25% improvement in app performance.",
                    "Anticipated and addressed production issues, maintaining 99.9% app uptime and attaining a user satisfaction rating of 4.8/5."
                ]
            ),
            
            
            ExperienceDetails(
                title: "Senior Mobile Application Develop",
                companyName: "MSM.digital, March 2018 - March 2021",
                bulletPoints: [
                    "Contributed to the success of 2 React Native applications, reaching a 25% rise in user acquisition by leveraging cross-platform capabilities.",
                    "Collaborated with the scrum team of 5 to translate client requirements into implementable user stories.",
                    "Revamped 4 apps for iOS 13 compatibility, achieving a 25% boost in user satisfaction and seamless experiences.",
                    "Seamlessly migrated iOS app to React Native, boosting user engagement by 30%.",
                    "Acquired Augmented Reality, staying updated with cutting-edge tech trends."
                ]
            ),
            
            ExperienceDetails(
                title: "iOS Developer",
                companyName: "Rebelute Digital Solution, Nov 2017 - Feb 2018",
                bulletPoints: [
                    
                    "Applied iOS design patterns (Delegate, Notification, Singleton, MVVM) for improved modularity and robustness, reducing code complexity by 30%.",
                    "Created fluid, scalable apps with Auto Layout for consistent user experience across devices and obtaining a 20% increase in user engagement.",
                    "Optimized apps with In-App Purchase functionality, driving a 25% revenue increase, demonstrating successful monetization strategies and heightened user satisfaction."
                ]
            ),
            
            ExperienceDetails(
                title: "Associate Software Engineer",
                companyName: "MindsAtWork Software Solutions, Jan 2015 - Oct 2017",
                bulletPoints: [
                    "Directed end-to-end lifecycle for 10+ successful applications, orchestrating seamless delivery and reducing a 20% project timelines.",
                    "Proficient in managing diverse Web Services protocols ( SOAP, XML, JSON, RESTful), optimizing data exchange efficiency by 30%.",
                    "Utilized Core Data, optimizing SQLite code, and improving data management efficiency by 35%.",
                    "Empowered real-time interaction through Apple Push Notifications, resulting in a 15% increase in user retention and heightened user engagement."
                ]
            )
        ]
    }
}
