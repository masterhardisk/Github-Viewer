//
//  GitApi.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//
import Foundation

class GitApi: Api {
    func getInfoBy(_ username: String) async throws -> User {
        return try await fetchData(from: .infoBy(username: username), as: UserDto.self).toUser
    }
    
    func getReposBy(_ username: String) async throws -> [Repo] {
        return try await fetchData(from: .reposBy(username: username), as: [RepoDto].self).map(\.toRepo)
    }
}

