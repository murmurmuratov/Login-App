//
//  User.swift
//  Login App
//
//  Created by Александр Муратов on 02.02.2022.
//

import Foundation

class User {
    var login: String
    var password: String
    var name: String
    
    init(login: String, password: String, name: String) {
        self.login = login
        self.password = password
        self.name = name
    }
}

let user = User(login: "AlexanderUsername", password: "AlexanderPassword", name: "Alexander")
