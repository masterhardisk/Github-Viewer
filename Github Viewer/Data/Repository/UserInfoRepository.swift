//
//  UserInfoRepository.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//
import Foundation

class UserInfoRepository: Repository {
    func getInfoBy(username: String) async throws -> User {
        return try await gitApi.getInfoBy(username)
    }
}
