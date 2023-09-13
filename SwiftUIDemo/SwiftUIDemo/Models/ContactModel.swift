//
//  ContactModel.swift
//  SwiftUIDemo
//
//  Created by Konstantin Chizhov on 08.08.2023.
//

import Foundation

/// Модель для хранения контакта
struct ContactModel: Identifiable {
    let id: UUID
    /// Номер телефона в свободном формате
    var phoneNumber: String
    /// Имя контакта
    var firstName: String
    /// Фамилия контакта
    var lastName: String
    /// Флаг заблокированности контакта
    var isBlocked: Bool
    /// Фотография
    let photoName: String
}
