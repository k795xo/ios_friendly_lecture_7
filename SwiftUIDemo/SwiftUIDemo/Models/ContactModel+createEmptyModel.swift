//
//  ContactModel+createEmptyModel.swift
//  SwiftUIDemo
//
//  Created by Konstantin Chizhov on 13.09.2023.
//

import Foundation

extension ContactModel {
    static func createEmptyModel() -> ContactModel {
        return ContactModel(
            id: UUID(),
            phoneNumber: "",
            firstName: "",
            lastName: "",
            isBlocked: false,
            photoName: ""
        )
    }
}
