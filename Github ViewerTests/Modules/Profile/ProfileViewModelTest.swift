//
//  ProfileViewModelTest.swift
//  Github Viewer
//
//  Created by MasterHardisk on 16/11/24.
//
import Testing
@testable import Github_Viewer

@Suite("Test of profile viewModel", .tags(.viewModel))
struct ProfileViewModelTest {
    let profileViewModel = ProfileViewModel()
    
    @Test
    func getReposTest() async throws{
        await profileViewModel.fetchRepos(for: "masterhardisk")
        #expect(profileViewModel.repos.count > 0)
    }
}
