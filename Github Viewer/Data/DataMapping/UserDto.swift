//
//  UserDto.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//
import Foundation

struct UserDto: Codable {
    let id: Int
    let login: String
    let avatarUrl: String
    let location: String
    let name: String
}
