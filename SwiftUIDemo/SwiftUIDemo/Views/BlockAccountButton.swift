//
//  BlockAccountButton.swift
//  SwiftUIDemo
//
//  Created by Konstantin Chizhov on 01.08.2023.
//

import SwiftUI

struct BlockAccountButton: View {
    // MARK: - Properties
    
    @State
    private var isBlockedAccount: Bool = false
    
    var body: some View {
        Button(action: { isBlockedAccount.toggle() }) {
            ZStack {
                Rectangle()
                    .cornerRadius(8)
                    .foregroundColor(.gray)
                if isBlockedAccount {
                    Text("Разблокировать")
                        .foregroundColor(.accentColor)
                } else {
                    Text("Заблокировать")
                        .foregroundColor(.red)
                }
            }
        }
        .frame(height: 32)
    }
}

struct BlockAccountButton_Previews: PreviewProvider {
    static var previews: some View {
        BlockAccountButton()
    }
}
