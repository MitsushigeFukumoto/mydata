//
//  OtherPlayer.swift
//  Jinro_morning
//
//  Created by Mitsushige Fukumoto on 2020/10/15.
//

import SwiftUI

struct OtherPlayer: View {
    var body: some View {
        ZStack{
            //BackGround
            Rectangle()  //赤
                .foregroundColor(Color(red: 100/255, green: 20/255, blue: 0/255))
                .edgesIgnoringSafeArea(.all)  //全体にする
            //プレイヤー人数
            VStack{
                
            }
        }
    }
}

struct OtherPlayer_Previews: PreviewProvider {
    static var previews: some View {
        OtherPlayer()
    }
}
