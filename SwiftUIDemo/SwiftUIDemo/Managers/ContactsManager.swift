//
//  ContactsManager.swift
//  SwiftUIDemo
//
//  Created by Konstantin Chizhov on 29.08.2023.
//

import Foundation

class ContactsManager: ObservableObject {
    /// Контакты
    @Published
    var contacts: [ContactModel] = [
        ContactModel(
            id: UUID(),
            phoneNumber: "+1(123)1234567",
            firstName: "Thomas",
            lastName: "Anderson",
            isBlocked: false,
            photoName: "Neo"
        ),
        ContactModel(
            id: UUID(),
            phoneNumber: "+1(123)7654312",
            firstName: "Carrie-Anne",
            lastName: "Moss",
            isBlocked: true,
            photoName: "Trinity"
        ),
    ]
}
