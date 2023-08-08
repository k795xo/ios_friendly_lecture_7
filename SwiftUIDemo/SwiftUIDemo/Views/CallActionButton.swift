//
//  CallActionButton.swift
//  SwiftUIDemo
//
//  Created by Konstantin Chizhov on 01.08.2023.
//

import SwiftUI

struct CallActionButton: View {
    // MARK: - Properties
    
    /// Название системной картинки
    let imageSystemName: String
    /// Подпись
    let title: String?
    /// Цвет фона
    let backgroundColor: Color
    /// Действие принажатии
    let action: () -> Void
    
    var body: some View {
        Button(action: {}) {
            VStack {
                ZStack {
                    Circle()
                        .frame(width: 64)
                        .foregroundColor(backgroundColor)
                    Image(systemName: imageSystemName)
                        .imageScale(.large)
                        .foregroundColor(.white)
                }
                if let title = title {
                    Text(title)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

struct CallActionButton_Previews: PreviewProvider {
    static var previews: some View {
        CallActionButton(imageSystemName: "phone.down.fill", title: "конец", backgroundColor: .red, action: {})
    }
}
