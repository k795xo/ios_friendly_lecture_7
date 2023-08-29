//
//  ContactPageScreen.swift
//  SwiftUIDemo
//
//  Created by Konstantin Chizhov on 01.08.2023.
//

import SwiftUI

struct ContactPageScreen: View {
    @EnvironmentObject
    var callScreenManager: CallScreenManager
    
    let contactModel: ContactModel
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 16)
            VStack {
                ZStack {
                    Circle()
                        .foregroundColor(.gray)
                        .frame(width: 128)
                    Image(contactModel.photoName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .foregroundColor(.white)
                        .frame(width: 128, height: 128)
                        .clipShape(Circle())
                }
            }
            Text("\(contactModel.firstName) \(contactModel.lastName)")
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
                    action: {
                        callScreenManager.contact = contactModel
                        callScreenManager.isVisible = true
                    }
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
        ContactPageScreen(
            contactModel: ContactModel(
                id: UUID(),
                phoneNumber: "+1(123)1234567",
                firstName: "Thomas",
                lastName: "Anderson",
                isBlocked: false,
                photoName: "Neo"
            )
        )
    }
}
