//
//  SignInView.swift
//  WithU
//
//  Created by artemiithefrog . on 28.05.2024.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
      NavigationStack {
        ZStack {
          Image(.signInBack)
            .resizable()
            .ignoresSafeArea()
          VStack {
            Image(.withU)
              .padding(.top, 40)
            Spacer()
            NavigationLink {
              RegisterScreenNameView()
            } label: {
              HStack {
                Image(.appleIcon)
                  .foregroundStyle(.white)
                Text("Sing in with Apple")
                  .bold()
                  .foregroundStyle(.white)
              }
              .frame(width: 205, height: 46)
              .background(.black)
              .clipShape(.rect(cornerRadius: 10))
            }
            .padding(.bottom, 20)
            Text("By registering, you confirm that you have read the Privacy Policy and accept the Terms of Use")
              .multilineTextAlignment(.center)
              .foregroundStyle(.black)
              .opacity(0.35)
              .font(.system(size: 10))
              .frame(width: 318)
              .padding(.bottom, 5)
          }
          VStack {
            Spacer()
            Image(.timeStops)
            Spacer()
          }
          .ignoresSafeArea()
        }
      }
    }
}
#Preview {
    SignInView()
}
