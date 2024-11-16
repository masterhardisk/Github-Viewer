//
//  UserInfoRepositoryTest.swift
//  Github Viewer
//
//  Created by MasterHardisk on 16/11/24.
//
import Testing
@testable import Github_Viewer

@Suite("Test of the user repository", .tags(.repository))
struct UserInfoRepositoryTest {
    let userRepository = UserInfoRepository()
    
    @Test
    func getUserInfo() async throws {
        let user = try await userRepository.getInfoBy(username: "masterhardisk")
        #expect(user.username == "Masterhardisk")
    }
}
