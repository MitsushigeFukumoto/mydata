//
//  shouhai.swift
//  Jinro_Rule
//
//  Created by Mitsushige Fukumoto on 2020/11/17.
//

import SwiftUI

struct shouhai: View {
    var body: some View {
        ZStack{
            Rectangle()  //赤
                .foregroundColor(Color(red: 100/255, green: 20/255, blue: 0/255))
                .edgesIgnoringSafeArea(.all)  //全体にする
            ScrollView(.vertical) {
                VStack() {
                    Text("勝敗のQ&A")
                        .font(.system(size: 30))
                        .frame(width: 300, height: 100, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                    Spacer()
                    Text("Q1\n投票数が2:2など同数だった場合は？\n\nA1\n両者とも追放になりますが、人狼が追放者にいるときは人狼の負けになります。おばけと市民チームが同数のときは、両者の勝ちです。")
                        .font(.system(size: 23))
                        .frame(width: 340, height: 320, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                        .padding(.vertical)
                    Text("Q2\n裏切り者を追放した場合は？\n\nA2\n裏切り者を追放しても、人狼は追放されていないので、人狼チームの勝ちです。")
                        .font(.system(size: 23))
                        .frame(width: 340, height: 240, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                        .padding(.vertical)
                    Text("Q3\n人狼が全部サブ役職にある場合は？\n\nA3\nこの場合だけ、本来追放しなくてもいいはずの裏切り者を追放することで、市民チームの勝になります。")
                        .font(.system(size: 23))
                        .frame(width: 340, height: 290, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                        .padding(.vertical)
                    Text("Q4\n人狼も裏切り者も全部サブ役職にある場合は？\n\nA4\n平和村に全員が投票すれば、市民チームとおばけチームの勝ちになります。\nただし、プレイヤーへの投票はカウントされないので、もし1人でもプレイヤーに投票をすれば、その1票が生きて投票された人が追放されます。")
                        .font(.system(size: 23))
                        .frame(width: 340, height: 400, alignment: .center)
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

struct shouhai_Previews: PreviewProvider {
    static var previews: some View {
        shouhai()
    }
}
