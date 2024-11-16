//
//  RepoDto.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//
import Foundation

struct RepoDto: Codable {
    let id: Int
    let name: String
    let language: String?
    let createdAt: Date
}
