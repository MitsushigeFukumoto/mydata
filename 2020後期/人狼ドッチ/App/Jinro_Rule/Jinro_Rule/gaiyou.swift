//
//  gaiyou.swift
//  Jinro_Rule
//
//  Created by Mitsushige Fukumoto on 2020/11/16.
//

import SwiftUI

struct gaiyou: View {
    var body: some View {
        ZStack{
            Rectangle()  //赤
                .foregroundColor(Color(red: 100/255, green: 20/255, blue: 0/255))
                .edgesIgnoringSafeArea(.all)  //全体にする
            ScrollView(.vertical) {
                VStack() {
                    Text("概要")
                        .font(.system(size: 30))
                        .frame(width: 300, height: 100, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                    Spacer()
                    Text("ゲーム開始時に1人２つの役職が配られます。\n自分が使いたい役職をメイン役職として選択します。\n\n市民チームは、村の中に紛れ込んで人狼を見つけ出して1人でも処刑させることを目指します。\n\n人狼チームは、ばれないように市民チームのプレイヤーを処刑させることを目指します。\n\n朝と夜に各プレイヤーはアクションを行い、議論でお互いの情報を出し合い人狼を見つけ出していきます。")
                        .font(.system(size: 23))
                        .frame(width: 340, height: 600, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                        .padding(.vertical)
                    //戻るボタン
                    HStack {
                        Button(action: {
                        }, label: {
                        Text("戻る")
                            .font(.system(size: 30))
                            .frame(width: 150, height: 90, alignment: .center)
                            .background(Color.white.opacity(0.6))
                            .foregroundColor(.black)
                            .cornerRadius(20.0)
                        Spacer()
                            .frame(width: 180, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        })
                    }
                }
                .frame(maxWidth: .infinity) // スクロールの対象範囲を画面幅いっぱいにする為
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct gaiyou_Previews: PreviewProvider {
    static var previews: some View {
        gaiyou()
    }
}
