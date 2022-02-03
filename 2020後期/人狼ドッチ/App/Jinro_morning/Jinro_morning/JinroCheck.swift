//
//  PlayerCheck.swift
//  Jinro_morning
//
//  Created by Mitsushige Fukumoto on 2020/10/12.
//

import SwiftUI

struct JinroCheck: View {
        var body: some View {
        
            ZStack{
                //BackGround
                Rectangle()  //赤
                    .foregroundColor(Color(red: 100/255, green: 20/255, blue: 0/255))
                    .edgesIgnoringSafeArea(.all)  //全体にする
                
                VStack{
                    Text("メインカードに人狼を選んだプレイヤーは")
                        .font(.system(size: 20))
                        .frame(width: 250, height: 110, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                        .padding(.top)
                    Spacer()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("プレイヤー1")
                        .font(.system(size: 30))
                        .frame(width: 300, height: 80, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                        .padding(.top)
                    Text("プレイヤー2")
                        .font(.system(size: 30))
                        .frame(width: 300, height: 80, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                        .padding(.top)
                    Spacer()
                    NavigationLink(destination:FortuneCheck()){
                        Text("OK")
                            .bold()
                            .font(.system(size: 30))
                            .frame(width: 190, height: 100, alignment: .center)
                            .foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(20.0)
                            .padding()
                    }
                    Spacer()
                        
                }
            }
            .navigationBarBackButtonHidden(true)
    }
}

struct JinroCheck_Previews: PreviewProvider {
    static var previews: some View {
        JinroCheck()
    }
}
