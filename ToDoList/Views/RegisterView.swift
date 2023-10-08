//
//  RegisterView.swift
//  ToDoList
//
//  Created by André Filipe Fonsêca Borba on 07/10/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", 
                       subtitle: "Start organize todos",
                       rotationAngleValue: -15,
                       backgroundColor: .orange)
        }
        Form {
            TextField("Full name", text: $viewModel.name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            TextField("Email Address", text: $viewModel.emailAddress)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                .autocorrectionDisabled()
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
            ButtonView(
                title: "Register",
                backgroundColor: Color.green) {
                // Action method...
            }
                .padding()
        }
        .offset(y: -50)
        Spacer()
    }
}

#Preview {
    RegisterView()
}
