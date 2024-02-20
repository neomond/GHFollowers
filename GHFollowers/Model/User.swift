//
//  User.swift
//  GHFollowers
//
//  Created by Nazrin Atayeva on 15.02.24.
//

import Foundation

struct User: Codable {
    let login: String
    let avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let followers: Int
    let following: Int
    let createdAt: String 
}

