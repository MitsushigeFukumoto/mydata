//
//  ContentView.swift
//  SmileApp
//
//  Created by Mitsushige Fukumoto on 2020/10/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "smiley")
            .resizable()
            .foregroundColor(.green)
            .scaledToFit()
            .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
