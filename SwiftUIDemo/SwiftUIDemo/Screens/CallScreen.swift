//
//  CallScreen.swift
//  SwiftUIDemo
//
//  Created by Konstantin Chizhov on 01.08.2023.
//

import SwiftUI

struct CallScreen: View {
    // MARK: - Properties
    
    /// Номер телефона
    let phoneNumber: String
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color(red: 0.141, green: 0.294, blue: 0.259),
                    Color(red: 0.098, green: 0.153, blue: 0.298)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea(.all)
            VStack {
                Spacer()
                Text(phoneNumber)
                    .font(.title)
                    .foregroundColor(.white)
                Text("вызов...")
                    .foregroundColor(.gray)
                Spacer()
                HStack {
                    CallActionButton(imageSystemName: "mic.slash.fill", title: "откл. звук", backgroundColor: .white.opacity(0.1), action: {})
                    Spacer()
                    CallActionButton(imageSystemName: "video.fill", title: "видео", backgroundColor:  .white.opacity(0.1), action: {})
                    Spacer()
                    CallActionButton(imageSystemName: "speaker.wave.3.fill", title: "динамик", backgroundColor:  .white.opacity(0.1), action: {})
                }
                .padding(.horizontal, 64)
                Spacer()
                CallActionButton(imageSystemName: "phone.down.fill", title: nil, backgroundColor: .red, action: {})
                Spacer()
            }
        }
    }
}

struct CallScreen_Previews: PreviewProvider {
    static var previews: some View {
        CallScreen(phoneNumber: "+7-921-123-45-67")
    }
}
