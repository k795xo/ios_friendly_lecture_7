//
//  SwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Konstantin Chizhov on 04.10.2023.
//

import SwiftUI

struct SwiftUIViewFirst: View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "person.fill")
            Text("+1 (1234) 122-1-22")
            Circle()
        }
    }
}

struct SSwiftUIViewFirst_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewFirst()
    }
}
