//
//  ApiError.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//

enum ApiError: Error {
    case notFound
    case networkError
    
    var message: String {
        switch self {
        case .notFound:
            return "User not found. Please enter another name."
        case .networkError:
            return "A network error has occurred. Check your Internet connection and try again later."
        }
    }
}
