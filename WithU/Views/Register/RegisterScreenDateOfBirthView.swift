//
//  RegisterScreenDateOfBirthView.swift
//  WithU
//
//  Created by artemiithefrog . on 28.05.2024.
//

import SwiftUI

struct RegisterScreenDateOfBirthView: View {
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
          HStack {
            RegisterTextField(text: $viewModel.userInfo.day,
                              titleKey: "DD",
                              keyboardType: .numberPad,
                              width: 70,
                              maxCharacters: 2)
            RegisterTextField(text: $viewModel.userInfo.month,
                              titleKey: "MM",
                              keyboardType: .numberPad,
                              width: 74,
                              maxCharacters: 2)
            RegisterTextField(text: $viewModel.userInfo.year,
                              titleKey: "YYYY",
                              keyboardType: .numberPad,
                              width: 84,
                              maxCharacters: 4)
          }
          Spacer()
          NavigationLink {
            RegisterScreenDateOfBirthView()
          } label: {
            HStack {
              Spacer()
              Image(.arrowRight)
                .opacity(viewModel.isUserDateValid ? 0.25 : 1)
            }
          }
          .disabled(viewModel.isUserDateValid)
          .padding(.trailing, 40)
          .padding(.bottom, 20)
        }
      }
    }
    .navigationBarBackButtonHidden(true)
  }
}

#Preview {
  RegisterScreenDateOfBirthView()
}
