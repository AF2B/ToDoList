//
//  ButtonView.swift
//  ToDoList
//
//  Created by André Filipe Fonsêca Borba on 08/10/23.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button {
          // Attempt Log In
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    ButtonView(title: "title", backgroundColor: Color.blue) {
        // Action...
    }
}
