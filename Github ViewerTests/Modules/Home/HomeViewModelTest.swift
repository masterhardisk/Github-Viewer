//
//  HomeViewModelTest.swift
//  Github Viewer
//
//  Created by MasterHardisk on 16/11/24.
//
import Testing
@testable import Github_Viewer

@Suite("Test of home viewModel", .tags(.viewModel))
struct HomeViewModelTest {
    let homeViewModel = HomeViewModel()
    
    @Test
    func getUserInfoTest() async throws {
        await homeViewModel.fetchInfoBy("masterhardisk")
        #expect(homeViewModel.user?.username == "Masterhardisk")
    }
}
