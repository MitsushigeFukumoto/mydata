//
//  ContentView.swift
//  ListApp
//
//  Created by Mitsushige Fukumoto on 2020/08/25.
//  Copyright © 2020 AIT. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                NavigationLink(destination: /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) { /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
            }.navigationBarTitle(/*@START_MENU_TOKEN@*/"Navigation Bar"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
