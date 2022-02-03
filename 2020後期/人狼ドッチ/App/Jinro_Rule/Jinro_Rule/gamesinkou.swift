//
//  gamesinkou.swift
//  Jinro_Rule
//
//  Created by Mitsushige Fukumoto on 2020/11/17.
//

import SwiftUI

struct gamesinkou: View {
    var body: some View {
        ZStack{
            Rectangle()  //赤
                .foregroundColor(Color(red: 100/255, green: 20/255, blue: 0/255))
                .edgesIgnoringSafeArea(.all)  //全体にする
            ScrollView(.vertical) {
                VStack() {
                    Text("ゲーム進行")
                        .font(.system(size: 30))
                        .frame(width: 300, height: 100, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                    Spacer()
                    Text("1.準備\nプレイヤー人数とプレイヤー名を入力します。\n役職が1人2つ配られるので、使いたい役職をどちらか選びます。")
                        .font(.system(size: 23))
                        .frame(width: 340, height: 230, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                        .padding(.vertical)
                    Text("2.早朝のアクション\nメインカードに選んだ役職によってアクションを行います。\n\n人狼→人狼同士の顔合わせ\n占い師→誰か１人のメインカードの確認\nそれ以外→自分の役職の再確認")
                        .font(.system(size: 23))
                        .frame(width: 340, height: 270, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                        .padding(.vertical)
                    Text("3.議論\n早朝のアクションの結果を踏まえ、プレイヤー同士で議論を行い、人狼と思われるプレイヤーを探し出します。")
                        .font(.system(size: 23))
                        .frame(width: 340, height: 180, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                        .padding(.vertical)
                    Text("4.夜のアクション\nメインカードに警察をDJを選択したプレイヤーのみアクションを行います。\n\n警察→誰か１人のサブカードの確認\nDJ→誰か１人のメインカードとサブカードを入れ替える。")
                        .font(.system(size: 23))
                        .frame(width: 340, height: 300, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                        .padding(.vertical)
                    Text("5.議論\n夜のアクションの結果を踏まえ、プレイヤー同士で議論を行い、人狼と思われるプレイヤーを探し出します。")
                        .font(.system(size: 23))
                        .frame(width: 340, height: 180, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                        .padding(.vertical)
                    Text("6.追放投票\n追放すべきだと思うプレイヤーに投票を行います。\n一番票数が多かったプレイヤーが追放となり、それによって勝敗結果が決まります。\n\n人狼→市民チーム勝利\n市民チーム→人狼チーム勝利\nおばけ→おばけの１人勝ち\n\n※詳しい勝敗条件は勝敗のQ&Aへ")
                        .font(.system(size: 23))
                        .frame(width: 340, height: 410, alignment: .center)
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

struct gamesinkou_Previews: PreviewProvider {
    static var previews: some View {
        gamesinkou()
    }
}
