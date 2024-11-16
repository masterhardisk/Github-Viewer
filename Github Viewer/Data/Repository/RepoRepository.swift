//
//  RepoRepository.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//
import Foundation

class RepoRepository: Repository {
    func getRepos(for user: String) async throws -> [Repo] {
        return try await gitApi.getReposBy(user)
    }
}
