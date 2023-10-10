//
//  SwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Konstantin Chizhov on 26.09.2023.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack {
            Color
                .brand400
                .ignoresSafeArea()
            VStack {
                Circle()
                    .foregroundColor(.gray)
                    .frame(width: 310)
                    .offset(y: -155)
                    .ignoresSafeArea()
                Spacer()
            }
            Text("QUIZ")
            VStack {
                HStack {
                    Text("Profile")
                        .overlay(
                            alignment: .topTrailing,
                            content: {
                            Circle()
                                .frame(width: 5)
                                .foregroundColor(.red)
                                .offset(x: 1, y: -6)
                        })
                    Spacer()
                    Text("Babki")
                }
                HStack {
                    VStack {
                        ScrollView {
                            Text("Vidget")
                            Text("Vidget")
                            Text("Vidget")
                            Text("Vidget")
                            Text("Vidget")
                        }
                        Spacer()
                    }
                    Spacer()
                    VStack {
                        VStack {
                            Text("Vidget")
                            Text("Vidget")
                            Text("Vidget")
                            Text("Vidget")
                            Text("Vidget")
                        }
                        Spacer()
                    }
                }
                Spacer()
                HStack {
                    Text("League")
                    Spacer()
                    Text("League")
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
