//
//  ProfileResultEntry.swift
//  pilot-ss
//
//  Created by Shamil Chomaev on 03.01.2023.
//

import Foundation

struct ProfileResultEntry: Identifiable, Codable {
    var id: UUID
    var isActive: Bool
    var firstName: String
    var lastName: String
    var phone: String?
    var endorsements: [String]
    var note: String?
}

extension ProfileResultEntry {
    var toModel: ProfileEntity {
        return ProfileEntity(id: id,
                             isActive: isActive,
                             firstName: firstName,
                             lastName: lastName,
                             endorsements: endorsements)
    }
}
