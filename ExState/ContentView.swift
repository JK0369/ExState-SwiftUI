//
//  ContentView.swift
//  ExState
//
//  Created by 김종권 on 2022/10/21.
//

import SwiftUI

// ex 1
//struct ContentView: View {
//  @State private var isPlaying = false
//
//  var body: some View {
//    PlayButton(isPlaying: isPlaying)
//      .onAppear {
//        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//          print("isPaying = \(isPlaying)")
//        }
//      }
//  }
//}
//
//struct PlayButton: View {
//  @State var isPlaying: Bool
//
//  var body: some View {
//    Button(isPlaying ? "Pause" : "Play") {
//      isPlaying.toggle()
//    }
//  }
//}

// ex 2
struct ContentView: View {
  @State private var isPlaying = false
  
  var body: some View {
    PlayButton(isPlaying: $isPlaying) // <-
      .onAppear {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
          print("isPaying = \(isPlaying)")
        }
      }
  }
}

struct PlayButton: View {
  @Binding var isPlaying: Bool // <-
  
  var body: some View {
    Button(isPlaying ? "Pause" : "Play") {
      isPlaying.toggle()
    }
  }
}
