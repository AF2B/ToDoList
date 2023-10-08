//
//  LoginView.swift
//  ToDoList
//
//  Created by André Filipe Fonsêca Borba on 07/10/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitle: "Get things done", rotationAngleValue: 15, backgroundColor: .pink)
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    ButtonView(
                        title: "Log In",
                        backgroundColor: Color.blue) {
                            viewModel.login()
                    }
                    .padding()
                }
                .offset(y: -50)
                
                // Create account
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account with us", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
