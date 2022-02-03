//
//  yakusyoku.swift
//  Jinro_Rule
//
//  Created by Mitsushige Fukumoto on 2020/11/17.
//

import SwiftUI

struct yakusyoku: View {
    var body: some View {
        ZStack{
            Rectangle()  //赤
                .foregroundColor(Color(red: 100/255, green: 20/255, blue: 0/255))
                .edgesIgnoringSafeArea(.all)  //全体にする
            ScrollView(.vertical) {
                VStack() {
                    Text("役職一覧")
                        .font(.system(size: 30))
                        .frame(width: 300, height: 100, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                    Group{
                        Text("人狼")
                            .font(.system(size: 27))
                            .bold()
                            .frame(width: 120, height: 60, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(20.0)
                            .padding(.vertical)
                        Image("狼のアイコン")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.white.opacity(0.9))
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white,lineWidth:4).shadow(radius: 10))
                        Text("街にひそむ人狼。正体がばれないように他の役職になりすまし、市民チームか裏切り者を追放しましょう。自分以外にも人狼がいるときは、協力してみんなを欺きましょう。")
                            .font(.system(size: 23))
                            .frame(width: 340, height: 210, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(20.0)
                            .padding(.vertical)
                    }
                    Group{
                        Text("裏切り者")
                            .font(.system(size: 27))
                            .bold()
                            .frame(width: 140, height: 60, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(20.0)
                            .padding(.vertical)
                        Image("ギャングのアイコン")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.white.opacity(0.9))
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white,lineWidth:4).shadow(radius: 10))
                        Text("人狼の味方をする悪い市民。でも、人狼も裏切り者もお互いの正体はわかりません。他の役職になりすまし、自分が怪しまれることで、人狼が追放されないようにしましょう。")
                            .font(.system(size: 23))
                            .frame(width: 340, height: 210, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(20.0)
                            .padding(.vertical)
                    }
                    Group{
                        Text("市民")
                            .font(.system(size: 27))
                            .bold()
                            .frame(width: 140, height: 60, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(20.0)
                            .padding(.vertical)
                        Image("スタンダードな人のアイコン素材")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.white.opacity(0.9))
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white,lineWidth:4).shadow(radius: 10))
                        Text("街を守る市民。能力者たちと協力して、待ちにまぎれこんでいる人狼を見つけましょう。特別な能力がないぶん、じっくり推理して、おかしな点を暴きましょう。")
                            .font(.system(size: 23))
                            .frame(width: 340, height: 210, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(20.0)
                            .padding(.vertical)
                    }
                    Group{
                        Text("占い師")
                            .font(.system(size: 27))
                            .bold()
                            .frame(width: 140, height: 60, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(20.0)
                            .padding(.vertical)
                        Image("占い師アイコン1")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.white.opacity(0.9))
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white,lineWidth:4).shadow(radius: 10))
                        Text("真の姿が見える占い師。誰か１人のメインカードを確認して、その人の正体を知ります。議論では、正体を名乗り出て占い結果を言うなどして、ヒントを出しましょう。")
                            .font(.system(size: 23))
                            .frame(width: 340, height: 210, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(20.0)
                            .padding(.vertical)
                    }
                    Group{
                        Text("警察")
                            .font(.system(size: 27))
                            .bold()
                            .frame(width: 140, height: 60, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(20.0)
                            .padding(.vertical)
                        Image("警官のアイコン1")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.white.opacity(0.9))
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white,lineWidth:4).shadow(radius: 10))
                        Text("捜査が得意な警察。誰か１人のサブカードを確認して、その人が選ばなかったカードを知ります。議論では、正体を名乗り出て占い結果を言うなどして、ヒントを出しましょう。")
                            .font(.system(size: 23))
                            .frame(width: 340, height: 210, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(20.0)
                            .padding(.vertical)
                    }
                    Group{
                        Text("DJ")
                            .font(.system(size: 27))
                            .bold()
                            .frame(width: 140, height: 60, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(20.0)
                            .padding(.vertical)
                        Image("DJアイコン2")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.white.opacity(0.9))
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white,lineWidth:4).shadow(radius: 10))
                        Text("ターンテーブルのようにカードを回すDJ。誰か1人のメインカードとサブカードを入れ替えます。人狼として戦っていたのに、最後に市民になっていた、ということが起こります。")
                            .font(.system(size: 23))
                            .frame(width: 340, height: 210, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(20.0)
                            .padding(.vertical)
                    }
                    Group{
                        Text("おばけ")
                            .font(.system(size: 27))
                            .bold()
                            .frame(width: 140, height: 60, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(20.0)
                            .padding(.vertical)
                        Image("ゴーストアイコン2")
                            .resizable()
                            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color.white.opacity(0.9))
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white,lineWidth:4).shadow(radius: 10))
                        Text("たった1人で戦う、なぞのおばけ。追放されれば、１人勝ちです。怪しい行動をとり、他の人に「人狼かな？」と思わせて、自分が追放されるように仕向けましょう。")
                            .font(.system(size: 23))
                            .frame(width: 340, height: 210, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(20.0)
                            .padding(.vertical)
                    }
                    Text("人狼チーム\n→人狼、裏切り者\n\n市民チーム\n→市民、占い師、警察、DJ\n\n単独\n→おばけ")
                        .font(.system(size: 23))
                        .frame(width: 340, height: 270, alignment: .center)
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

struct yakusyoku_Previews: PreviewProvider {
    static var previews: some View {
        yakusyoku()
    }
}
