//
//  Repo.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//
import Foundation

struct Repo: Identifiable, Hashable {
    let id: Int
    let name: String
    let language: String
    let date: Date
}
