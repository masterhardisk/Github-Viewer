//
//  User.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//
import Foundation

struct User: Identifiable, Hashable {
    let id: Int
    let username: String
    let avatarUrl: String?
    let location: String
    let name: String
}
