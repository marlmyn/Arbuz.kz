//
//  WelcomeView.swift
//  Arbuz.kz
//
//  Created by Akmaral Ergesh on 20.05.2024.
//

import SwiftUI

struct WelcomeView: View {
    @State private var presentHome = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image(uiImage: Images.welcomeImg)
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    Spacer()
                    Button {
                        presentHome.toggle()
                    } label: {
                        Text("Get Started")
                            .foregroundColor(.white)
                            .font(.system(size: 24, weight: .bold, design: .rounded))
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .background(SwiftUI.Color(uiColor: UIColor(red: 0.494, green: 0.624, blue: 0.125, alpha: 1.0)))
                    .ignoresSafeArea(edges: .all)
                    .cornerRadius(15)
                    .padding(.horizontal, 50)
                    .padding(.bottom, 0)
                }
            }.navigationDestination(isPresented: $presentHome) {
                Text("Home")
            }
        }
    }
}

#Preview {
    WelcomeView()
}
