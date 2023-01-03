//
//  ProfileEntity.swift
//  pilot-ss
//
//  Created by Shamil Chomaev on 03.01.2023.
//

import Foundation

struct ProfileEntity: Identifiable {
    var id: UUID
    var isActive: Bool
    var firstName: String
    var lastName: String
    var phone: String?
    var endorsements: [String]
    var note: String?
}

extension ProfileEntity {
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}
