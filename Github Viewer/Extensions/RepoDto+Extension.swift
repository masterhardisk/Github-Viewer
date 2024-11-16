//
//  RepoDto.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//

extension RepoDto {
    var toRepo: Repo {
        Repo(id:  id,
             name: name,
             language: language ?? "-",
             date: createdAt)
    }
}
