//
//  ContentView.swift
//  Jinro_Rule
//
//  Created by Mitsushige Fukumoto on 2020/11/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                //Background
                Rectangle()//赤
                    .foregroundColor(Color(red: 100/255, green: 20/255, blue: 0/255))
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    NavigationLink(destination: gaiyou()){
                        Text("概要")
                            .font(.system(size: 30))
                            .frame(width: 190, height: 100, alignment: .center)
                            .foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(20.0)
                    }
                    Spacer()
                    NavigationLink(destination: gamesinkou()){
                        Text("ゲーム進行")
                            .font(.system(size: 30))
                            .frame(width: 190, height: 100, alignment: .center)
                            .foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(20.0)
                    }
                    Spacer()
                    NavigationLink(destination: yakusyoku()){
                        Text("役職一覧")
                            .font(.system(size: 30))
                            .frame(width: 190, height: 100, alignment: .center)
                            .foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(20.0)
                    }
                    Spacer()
                    NavigationLink(destination: shouhai()){
                        Text("勝敗のQ&A")
                            .font(.system(size: 30))
                            .frame(width: 190, height: 100, alignment: .center)
                            .foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(20.0)
                    }
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
