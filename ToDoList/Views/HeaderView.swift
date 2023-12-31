//
//  HeaderView.swift
//  ToDoList
//
//  Created by André Filipe Fonsêca Borba on 08/10/23.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let rotationAngleValue: Double
    let backgroundColor: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: rotationAngleValue))
            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                Text(subtitle)
                    .font(.system(size: 40))
                    .foregroundColor(.white)
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "title", subtitle: "subtitle", rotationAngleValue: 15, backgroundColor: .blue)
}
