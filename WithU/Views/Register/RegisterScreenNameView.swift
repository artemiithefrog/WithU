//
//  RegisterScreenNameView.swift
//  WithU
//
//  Created by artemiithefrog . on 28.05.2024.
//

import SwiftUI

struct RegisterScreenNameView: View {
  @StateObject private var viewModel = RegisterViewModel()
  

  var body: some View {
    NavigationStack {
      ZStack {
        Color(.whiteBack).ignoresSafeArea()
        VStack {
          Spacer()
          Text("Hey!\nWhat's your name?")
            .multilineTextAlignment(.center)
            .font(.system(size: 20, weight: .semibold))
          RegisterTextField(text: $viewModel.userInfo.name,
                            titleKey: "Name",
                            keyboardType: .default,
                            width: 136,
                            maxCharacters: 20)
          Spacer()
          NavigationLink {
            RegisterScreenDateOfBirthView()
          } label: {
            HStack {
              Spacer()
              Image(.arrowRight)
                .opacity(viewModel.isUserNameValid ? 0.25 : 1)
            }
          }
          .disabled(viewModel.isUserNameValid)
          .padding(.trailing, 40)
          .padding(.bottom, 20)
        }
      }
    }
    .navigationBarBackButtonHidden(true)
  }
}

#Preview {
  RegisterScreenNameView()
}
