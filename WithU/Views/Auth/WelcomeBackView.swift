//
//  WelcomeBackView.swift
//  WithU
//
//  Created by artemiithefrog . on 28.05.2024.
//

import SwiftUI

struct WelcomeBackView: View {
    var body: some View {
      ZStack {
        Color(.whiteBack).ignoresSafeArea()
        VStack {
          Image(.withU)
            .resizable()
            .frame(width: 60, height: 11)
            .padding(.top, 40)
          Spacer()
        }
        VStack {
          Text("You're back!")
            .font(.system(size: 32, weight: .semibold))
          Text("Welcome back, Varya")
            .font(.system(size: 24, weight: .regular))
        }
      }
    }
}

#Preview {
    WelcomeBackView()
}
