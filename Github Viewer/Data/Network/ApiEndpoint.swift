//
//  ApiEndpoint.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//


import Foundation

enum ApiEndpoint {
    case infoBy(username: String)
    case reposBy(username: String)

    private var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }
    
    var url: URL {
        switch self {
        case .infoBy(let username):
            return baseURL.appendingPathComponent("/users/\(username)")
        case .reposBy(username: let username):
            return baseURL.appendingPathComponent("/users/\(username)/repos")
        }
    }
}
