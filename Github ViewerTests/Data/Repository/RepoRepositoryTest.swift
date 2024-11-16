//
//  RepoRepositoryTest.swift
//  Github Viewer
//
//  Created by MasterHardisk on 16/11/24.
//
import Testing
@testable import Github_Viewer

@Suite("Test of the repos repository", .tags(.repository))
struct RepoRepositoryTest {
    let repoRepository = RepoRepository()
    
    @Test
    func getRepos() async throws {
        let repos = try await repoRepository.getRepos(for: "masterhardisk")
        #expect(repos.count > 0)
    }
}
