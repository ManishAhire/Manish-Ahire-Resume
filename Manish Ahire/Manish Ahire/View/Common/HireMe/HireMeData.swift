//
//  HireMeData.swift
//  Manish Ahire
//
//  Created by Manish Ahire on 16/05/24.
//

import Foundation
import UIKit

struct MenuItem: Identifiable {
    let id = UUID()
    let title: String
    var link: URL?
    var icon: String?
    var actionType: ActionType?
    var action: ((ActionType) -> Void)?
    var subMenuItems: [MenuItem]?
}

enum ActionType {
    case copyNumber
    case callNumber
    case copyEmail
    case sendEmail
    case linkedIn
    case none
}

struct ContactInfo {
    static let phoneNumber: String = "8793838402"
    static let emailAddress: String = "ahiremanishb@gmail.com"
    static let linkedin: String = "https://www.linkedin.com/in/manish-ahire/"
    static let portfolio: String = "https://manishahire.com/"
}

final class Contact {
    
    func fetchData() -> [MenuItem] {
        
        return [
        
            MenuItem(title: "Phone Number", icon: "callRinging", subMenuItems: [
                MenuItem(title: "Copy Number", actionType: .copyNumber, action: { actionType in
                    self.handleAction(actionType)
                }),
                
                MenuItem(title: "Call Me", actionType: .callNumber, action: { actionType in
                    self.handleAction(actionType)
                })
            ]),
            
            MenuItem(title: "Email", icon: "envelope", subMenuItems: [
                MenuItem(title: "Copy Email", actionType: .copyEmail, action: { actionType in
                    self.handleAction(actionType)
                }),
                
                MenuItem(title: "Send Email", actionType: .sendEmail, action: { actionType in
                    self.handleAction(actionType)
                })
            ]),
            
            MenuItem(title: "Linkedin", link: URL(string: ContactInfo.linkedin)),
            
            MenuItem(title: "Portfolio", link: URL(string: ContactInfo.portfolio))
        ]
    }
    
    private func handleAction(_ actionType: ActionType) {
        switch actionType {
        case .copyNumber:
            copy(text: ContactInfo.phoneNumber)
        case .callNumber:
            callNumber(ContactInfo.phoneNumber)
        case .copyEmail:
            copy(text: ContactInfo.emailAddress)
        case .sendEmail:
            sendEmail(ContactInfo.emailAddress)
        case .linkedIn:
            break
        case .none:
            break
        }
    }
    
    private func copy(text: String) {
        UIPasteboard.general.string = text
    }
    
    private func callNumber(_ number: String) {
        if let phoneURL = URL(string: "tel://\(number)"), UIApplication.shared.canOpenURL(phoneURL) {
            UIApplication.shared.open(phoneURL)
        } else {
            print("Can't call")
        }
    }
    
    private func sendEmail(_ email: String) {
        if let email = email.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
            if let emailURL = URL(string: "mailTo: \(email)") {
                if UIApplication.shared.canOpenURL(emailURL) {
                    UIApplication.shared.open(emailURL)
                } else {
                    print("Can't email")
                }
            }
        }
    }
 }
