//
//  CustomTextField.swift
//  WithU
//
//  Created by artemiithefrog . on 29.05.2024.
//

import SwiftUI

struct RegisterTextField: View {
  @Binding var text: String
  var titleKey: String
  var keyboardType: UIKeyboardType
  var width: CGFloat
  var maxCharacters: Int
  
  var body: some View {
    TextField(titleKey, text: $text)
      .keyboardType(keyboardType)
      .frame(width: width, height: 36)
      .background(Color.white)
      .cornerRadius(10)
      .multilineTextAlignment(.center)
      .font(.system(size: 14, weight: .medium))
      .padding(.bottom, 200)
      .onChange(of: text) { newValue in
        if newValue.count > maxCharacters {
          text = String(newValue.prefix(maxCharacters))
        }
      }
  }
}
