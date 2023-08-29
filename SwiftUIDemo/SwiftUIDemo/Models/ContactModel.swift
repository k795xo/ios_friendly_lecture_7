//
//  ContactModel.swift
//  SwiftUIDemo
//
//  Created by Konstantin Chizhov on 08.08.2023.
//

import Foundation

/// Модель для хранения контакта
struct ContactModel: Identifiable {
    var id: UUID
    /// Номер телефона в свободном формате
    let phoneNumber: String
    /// Имя контакта
    let firstName: String
    /// Фамилия контакта
    let lastName: String
    /// Флаг заблокированности контакта
    var isBlocked: Bool
    /// Фотография
    var photoName: String
}
