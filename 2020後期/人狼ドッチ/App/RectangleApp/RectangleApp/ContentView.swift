//
//  ContentView.swift
//  RectangleApp
//
//  Created by Mitsushige Fukumoto on 2020/10/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle()
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
