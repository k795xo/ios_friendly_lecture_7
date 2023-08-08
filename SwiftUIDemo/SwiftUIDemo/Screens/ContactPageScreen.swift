//
//  ContactPageScreen.swift
//  SwiftUIDemo
//
//  Created by Konstantin Chizhov on 01.08.2023.
//

import SwiftUI

struct ContactPageScreen: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 16)
            VStack {
                ZStack {
                    Circle()
                        .foregroundColor(.gray)
                        .frame(width: 128)
                    Image(systemName: "person.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 64, height: 64)
                }
            }
            Text("+1 (1234) 122-1-22")
                .font(.largeTitle)
            HStack {
                ContactPageActionButton(
                    title: "написать",
                    imageSystemName: "message.fill",
                    action: { }
                )
                ContactPageActionButton(
                    title: "вызов",
                    imageSystemName: "phone.fill",
                    action: { }
                )
                ContactPageActionButton(
                    title: "видео",
                    imageSystemName: "video.fill",
                    action: { }
                )
                ContactPageActionButton(
                    title: "почта",
                    imageSystemName: "envelope.fill",
                    action: { }
                )
            }
            .frame(height: 64)
            Spacer()
                .frame(height: 16)
            BlockAccountButton()
            Spacer()
        }
        .padding()
    }
}

struct ContactPageScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactPageScreen()
    }
}
