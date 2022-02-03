//
//  TouhyouResult.swift
//  Jinro_Touhyou
//
//  Created by Mitsushige Fukumoto on 2020/11/03.
//

import SwiftUI

struct TouhyouResult: View {
    var body: some View {
        ZStack{
            //Background
            Rectangle()//赤
                .foregroundColor(Color(red: 100/255, green: 20/255, blue: 0/255))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("投票結果")
                    .font(.system(size: 30))
                    .frame(width: 300, height: 100, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(20.0)
                Spacer()
                Text("投票の結果プレイヤー１が追放されました。")
                    .font(.system(size: 20))
                    .frame(width: 340, height: 200, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(20.0)
                    .padding(.vertical)
                Spacer()
                
                NavigationLink(destination: GameResult()){
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
        .navigationBarBackButtonHidden(true)
    }
}

struct TouhyouResult_Previews: PreviewProvider {
    static var previews: some View {
        TouhyouResult()
    }
}
