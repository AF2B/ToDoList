//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by André Filipe Fonsêca Borba on 08/10/23.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        // Attempt log in...
    }
    
    private func validate() -> Bool {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please set up all fields."
            return false
        }
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please set up an valid email."
            return false
        }
        return true
    }
}
