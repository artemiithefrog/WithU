//
//  RegisterViewModel.swift
//  WithU
//
//  Created by artemiithefrog . on 28.05.2024.
//

import Foundation
import SwiftUI

class RegisterViewModel: ObservableObject {
  @Published var userInfo = UserInfo(name: "", day: "", month: "", year: "")

  var isUserNameValid: Bool {
    return userInfo.name.count < 3
  }
  var isUserDateValid: Bool {
    return userInfo.day.count < 2 || userInfo.month.count < 2 || userInfo.year.count < 4
  }
}
