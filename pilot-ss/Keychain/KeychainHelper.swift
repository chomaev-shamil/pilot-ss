//
//  KeychainHelper.swift
//  pilot-ss
//
//  Created by Shamil Chomaev on 03.01.2023.
//

import Foundation
import KeychainSwift

class KeychainHelper {
    
    static let shared = KeychainHelper()
    
    private let keychain = KeychainSwift()
    
    // MARK: Public
    
    func setAccessToken(token: String) {
        keychain.set(token, forKey: Key.accessToken.rawValue)
    }
    
    func setRefreshToken(token: String) {
        keychain.set(token, forKey: Key.refreshToken.rawValue)
    }
    
    func getAccessToken() -> String? {
        return keychain.get(Key.accessToken.rawValue)
    }
    
    func getRefreshToken() -> String? {
        return keychain.get(Key.refreshToken.rawValue)
    }
    
    func delete() {
        for key in Key.allCases {
            keychain.delete(key.rawValue)
        }
    }
    
    // MARK: Private
    
    private enum Key: String, CaseIterable {
        case accessToken = "ADMAccessToken"
        case refreshToken = "ADMRefreshToken"
    }
}

