//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by Konstantin Chizhov on 01.08.2023.
//

import SwiftUI

@main
struct SwiftUIDemoApp: App {
    @ObservedObject
    var callScreenManager: CallScreenManager = CallScreenManager()
    @ObservedObject
    var contactsManager: ContactsManager = ContactsManager()
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                TabView {
                    ContactsScreen()
                        .tabItem {
                            Label("Контакты", systemImage: "person.crop.circle.fill")
                        }
                    Text("Кнопки")
                        .tabItem {
                            Label("Кнопки", systemImage: "apps.iphone") 
                        }
                }
                if callScreenManager.isVisible,
                   let contact = callScreenManager.contact {
                    CallScreen(contactModel: contact)
                }
            }
            .environmentObject(callScreenManager)
            .environmentObject(contactsManager)
        }
    }
}
