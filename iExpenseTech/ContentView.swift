//
//  ContentView.swift
//  iExpenseTech
//
//  Created by Waihon Yew on 08/06/2021.
//

import SwiftUI

struct User {
  var firstName = "Bilbo"
  var lastName = "Baggins"
}

struct ContentView: View {
  @State private var user = User()
  
  var body: some View {
    VStack {
      Text("Your name is \(user.firstName) \(user.lastName)")
      TextField("First name", text: $user.firstName)
        .padding(10)
      TextField("Last name", text: $user.lastName)
        .padding(10)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
