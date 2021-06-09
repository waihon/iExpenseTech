//
//  ContentView.swift
//  iExpenseTech
//
//  Created by Waihon Yew on 08/06/2021.
//

import SwiftUI

struct SecondView: View {
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    Button("Dismiss") {
      self.presentationMode.wrappedValue.dismiss()
    }
  }
}

struct ContentView: View {
  // 1. A state to track whether the sheet is showing
  @State private var showingSheet = false
  
  var body: some View {
    Button("Show Sheet") {
      // 2. Toggle the state when our button is tapped
      self.showingSheet.toggle()
    }
    // 3. Attch our sheet somewhere to our view hierarchy
    .sheet(isPresented: $showingSheet) {
      // 4. Define what should actually be in the sheet
      SecondView()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
