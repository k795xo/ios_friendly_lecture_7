//
//  CallScreenManager.swift
//  SwiftUIDemo
//
//  Created by Konstantin Chizhov on 08.08.2023.
//

import Foundation

class CallScreenManager: ObservableObject {
    @Published
    var contact: ContactModel? = nil
    @Published
    var isVisible: Bool = true
}
