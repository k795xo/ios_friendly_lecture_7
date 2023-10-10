//
//  ContactsScreen.swift
//  SwiftUIDemo
//
//  Created by Konstantin Chizhov on 08.08.2023.
//

import SwiftUI

struct ContactsScreen: View {
    @EnvironmentObject
    var contactsManager: ContactsManager
    
    @State private var currentSelection: UUID? = nil
    
    private let newContactID: UUID = UUID()
    
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(searchResults) { contact in
                    NavigationLink(
                        destination: ContactPageScreen(
                            contactModel: contact
                        ).toolbar(content: {
                            NavigationLink(
                                destination: ContactEditScreen(
                                    contactModel: contact,
                                    saveAction: { newContact in
                                        contactsManager.save(contact: newContact)
                                    }
                                )
                            ) {
                                Text("править")
                            }
                        }),
                        tag: contact.id,
                        selection: $currentSelection
                    ) {
                        Text("\(contact.firstName) \(contact.lastName)")
                    }
                }
                .onDelete { indexSet in
                    contactsManager.remove(indexSet: indexSet)
                }
            }
            .searchable(text: $searchText)
            .toolbar {
                NavigationLink(
                    destination: ContactEditScreen(
                        contactModel: ContactModel.createEmptyModel(),
                        saveAction: { newContact in
                            currentSelection = nil
                            contactsManager.add(contact: newContact)
                        }
                    ),
                    tag: newContactID,
                    selection: $currentSelection
                ) {
                    Text("создать создать создать создать")
                        .frame(width: 100)                }
            }
        }
    }
    
    var searchResults: [ContactModel] {
        if searchText.isEmpty {
            return contactsManager.contacts
        } else {
            return contactsManager.contacts.filter { contactModel in
                contactModel.firstName.contains(searchText) ||
                contactModel.lastName.contains(searchText)
            }
        }
    }
}

struct ContactsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactsScreen()
            .environmentObject(ContactsManager())
    }
}
