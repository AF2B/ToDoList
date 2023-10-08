//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by André Filipe Fonsêca Borba on 08/10/23.
//
import Foundation

class RegisterViewViewModel: ObservableObject {
    @Published var name = ""
    @Published var emailAddress = ""
    @Published var password = ""
    
    init() {}
    
    func register() {
        guard validate() else {
            return
        }
        // Register an user to memory...
    }
    
    private func insertUserRecord(id: String) {
        let newUser = User(id: id,
                           name: name,
                           email: emailAddress,
                           joined: Date.timeIntervalBetween1970AndReferenceDate)
    }
    
    private func validate() -> Bool {
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
                !emailAddress.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        guard emailAddress.contains("@") && emailAddress.contains(".") else {
            return false
        }
        guard password.count >= 6 else {
            return false
        }
        return true
    }
}
