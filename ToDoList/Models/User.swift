//
//  User.swift
//  ToDoList
//
//  Created by André Filipe Fonsêca Borba on 08/10/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
