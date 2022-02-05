//
//  User.swift
//  Login App
//
//  Created by Александр Муратов on 02.02.2022.
//

import Foundation

struct User {
    var login: String
    var password: String
    var name: String
    
    static func getUserData() -> User {
        User(
            login: "AlexanderUsername",
            password: "AlexanderPassword",
            name: "Alexander")
    }
}
