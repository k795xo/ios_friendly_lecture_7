//
//  ContactEditScreen.swift
//  SwiftUIDemo
//
//  Created by Konstantin Chizhov on 29.08.2023.
//

import SwiftUI

/// Экран редактирования контакта
struct ContactEditScreen: View {
    /// Модель контакта
    @State
    var contactModel: ContactModel
    /// Действие сохранения
    let saveAction: (ContactModel) -> Void
    
    var body: some View {
        Form {
            Section {
                TextField("Имя", text: $contactModel.firstName)
                TextField("Фамилия", text: $contactModel.lastName)
                TextField("Телефон", text: $contactModel.phoneNumber)
            }
        }
        .toolbar {
            Button(action: {
                saveAction(contactModel)
            }, label: {
                Text("сохранить")
            })
        }
    }
}

struct ContactEditScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactEditScreen(
            contactModel: ContactModel(
                id: UUID(),
                phoneNumber: "+1(123)1234567",
                firstName: "Thomas",
                lastName: "Anderson",
                isBlocked: false,
                photoName: "Neo"
            ), saveAction: { _ in
                
            }
        )
    }
}
