//
//  ProfileViewModel.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//
import SwiftUI

@Observable
final class ProfileViewModel: HandleError {
    let repoRepository: RepoRepository = RepoRepository()
    
    var repos: [Repo] = []
    
    func fetchRepos(for username: String?) async {
        do {
            guard let username else { throw ApiError.networkError }
            repos = try await repoRepository.getRepos(for: username)
           
        }catch let error as ApiError {
            showError(message: error.message)
        } catch {
            showError(message: error.localizedDescription)
        }
    }
}
