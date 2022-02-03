//
//  PlayerCheck.swift
//  Jinro_morning
//
//  Created by Mitsushige Fukumoto on 2020/10/15.
//

import SwiftUI

struct PlayerCheck: View {
    var body: some View {
        ZStack{
            //BackGround
            Rectangle()  //赤
                .foregroundColor(Color(red: 100/255, green: 20/255, blue: 0/255))
                .edgesIgnoringSafeArea(.all)  //全体にする
            VStack{
                Text("このプレイヤーに端末を渡してください")
                    .font(.system(size: 30))
                    .frame(width: 320, height: 100, alignment: .center)
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                    .padding(.top,0)
                Spacer()
                //画像表示
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.white.opacity(0.9))
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth:4).shadow(radius: 10))
                Spacer()
                //処理後に名前を表示させる
                Text("プレイヤー１")
                    .font(.system(size: 30))
                    .frame(width: 320, height: 100, alignment: .center)
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                    .padding(.top,20)
                Spacer()
                
                Button(action: {
                   
                }) {
                    NavigationLink(destination:JinroCheck()){
                        Text("OK")
                            .font(.system(size: 30))
                            .frame(width: 150, height: 90, alignment: .center)
                            .background(Color.white.opacity(0.9))
                            .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                            .padding(.bottom,20)
                            .foregroundColor(.black)
                    }
                }
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct PlayerCheck_Previews: PreviewProvider {
    static var previews: some View {
        PlayerCheck()
    }
}
