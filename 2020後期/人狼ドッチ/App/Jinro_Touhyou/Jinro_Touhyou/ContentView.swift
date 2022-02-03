//
//  ContentView.swift
//  Jinro_Touhyou
//
//  Created by Mitsushige Fukumoto on 2020/11/02.
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
                    Text("最後の議論")
                        .font(.system(size: 30))
                        .frame(width: 300, height: 100, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                    Spacer()
                    Text("これより最後の議論を始めます\n夜のアクションを踏まえて議論を行ってください\nこの議論終了後に追放投票を行います。")
                        .font(.system(size: 20))
                        .frame(width: 300, height: 250, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                        .padding(.vertical)
                    Spacer()
                    
                    NavigationLink(destination: Discussion()){
                        Text("OK")
                            .bold()
                            .font(.system(size: 30))
                            .frame(width: 190, height: 100, alignment: .center)
                            .foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(20.0)
                    }
                    Spacer()
                        .frame(width: 100, height: 200, alignment: .center)
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
