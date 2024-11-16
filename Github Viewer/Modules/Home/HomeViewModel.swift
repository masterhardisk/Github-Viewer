//
//  HomeViewModel.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//
import SwiftUI

@Observable
final class HomeViewModel: HandleError {
    let userInfoRepository: UserInfoRepository = UserInfoRepository()
    
    var user: User?
    var navigateToProfile = false
    var textField: String = ""
    
    func fetchInfo() async {
        do {
            user = try await userInfoRepository.getInfoBy(username: textField)
            navigateToProfile.toggle()
        }catch let error as ApiError {
            showError(message: error.message)
        } catch {
            showError(message: error.localizedDescription)
        }
        
    }
}
