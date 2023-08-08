//
//  ContactPageActionButton.swift
//  SwiftUIDemo
//
//  Created by Konstantin Chizhov on 01.08.2023.
//

import SwiftUI

struct ContactPageActionButton: View {
    // MARK: - Properties
    
    /// Заголовок кнопки
    let title: String
    /// Название системной картинки
    let imageSystemName: String
    /// Действие принажатии
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                Rectangle()
                    .cornerRadius(8)
                    .foregroundColor(.gray)
                VStack(spacing: 4) {
                    Image(systemName: imageSystemName)
                        .foregroundColor(.white)
                    Text(title)
                        .font(.footnote)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct ContactPageActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ContactPageActionButton(title: "написать", imageSystemName: "message.fill", action: { })
            .frame(width: 128.0, height: 64.0)
            .previewLayout(.sizeThatFits)
        ContactPageActionButton(title: "написать", imageSystemName: "message.fill", action: { })
            .preferredColorScheme(.dark)
        ContactPageActionButton(title: "написать", imageSystemName: "message.fill", action: { })
            .frame(width: 32.0, height: 64.0)
            .previewLayout(.sizeThatFits)
    }
}
