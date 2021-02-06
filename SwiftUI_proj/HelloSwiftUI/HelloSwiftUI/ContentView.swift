//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by USER on 2021/02/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello 😃\nSwiftUI").font(.largeTitle).lineLimit(1)
            .padding(.all)
            .accentColor(.red)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
