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
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contactsManager.contacts) { contact in
                    NavigationLink(destination: ContactPageScreen(contactModel: contact)) {
                        Text("\(contact.firstName) \(contact.lastName)")
                    }
                }
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
