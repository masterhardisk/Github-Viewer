//
//  UserDto+Extension.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//
extension UserDto {
    var toUser: User {
        User(id: id,
             username: login.capitalized,
             avatarUrl: avatarUrl,
             location: location,
             name: name)
    }
}
