//
//  FortuneCheck.swift
//  Jinro_morning
//
//  Created by Mitsushige Fukumoto on 2020/10/12.
//

import SwiftUI

struct FortuneCheck: View {
    var body: some View {
        ZStack{
            //BackGround
            Rectangle()  //赤
                .foregroundColor(Color(red: 100/255, green: 20/255, blue: 0/255))
                .edgesIgnoringSafeArea(.all)  //全体にする
            VStack{
                Text("誰か１人のメインカードを確認することができます。")
                    .font(.system(size: 20))
                    .frame(width: 300, height: 100, alignment: .center)
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                    .padding(.top,20)
                Spacer()
                Button(action: {
                    
                }) {
                    NavigationLink(destination: FortuneResult()) {
                    Text("プレイヤー１")
                        .font(.system(size: 30))
                        .frame(width: 250, height: 70, alignment: .center)
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(20.0)
                        .foregroundColor(.black)
                    }
                }
                Spacer()
                Button(action: {
                    
                }) {
                    NavigationLink(destination: FortuneResult()) {
                    Text("プレイヤー2")
                        .font(.system(size: 30))
                        .frame(width: 250, height: 70, alignment: .center)
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(20.0)
                        .foregroundColor(.black)
                    }
                }
                Spacer()
                Button(action: {
                    
                }) {
                    NavigationLink(destination: FortuneResult()) {
                    Text("プレイヤー3")
                        .font(.system(size: 30))
                        .frame(width: 250, height: 70, alignment: .center)
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(20.0)
                        .foregroundColor(.black)
                    }
                }
                Spacer()
                Button(action: {
                    
                }) {
                    NavigationLink(destination: FortuneResult()) {
                    Text("プレイヤー4")
                        .font(.system(size: 30))
                        .frame(width: 250, height: 70, alignment: .center)
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(20.0)
                        .foregroundColor(.black)
                    }
                }
                Spacer()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct FortuneCheck_Previews: PreviewProvider {
    static var previews: some View {
        FortuneCheck()
    }
}
