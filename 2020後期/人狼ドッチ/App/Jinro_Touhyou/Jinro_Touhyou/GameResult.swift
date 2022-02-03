//
//  GameResult.swift
//  Jinro_Touhyou
//
//  Created by Mitsushige Fukumoto on 2020/11/03.
//

import SwiftUI

struct GameResult: View {
    var body: some View {
        ZStack{
            //Background
            Rectangle()//赤
                .foregroundColor(Color(red: 100/255, green: 20/255, blue: 0/255))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("市民チームの勝利")
                    .font(.system(size: 30))
                    .frame(width: 300, height: 100, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(20.0)
                HStack{
                    Spacer()
                        .frame(width: 160, height: 80, alignment: .center)
                    Text("メイン")
                        .font(.system(size: 20))
                        .frame(width: 100, height: 40, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                        .padding(.vertical)
                    Text("サブ")
                        .font(.system(size: 20))
                        .frame(width: 90, height: 40, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                        .padding(.vertical)
                }
                HStack{
                    Text("プレイヤー１")
                        .font(.system(size: 20))
                        .frame(width: 160, height: 50, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                    Image("占い師")
                        .resizable()    // 画像サイズをフレームサイズに合わせる
                        .frame(width: 74, height: 105)
                    Spacer()
                        .frame(width: 30, height: 5, alignment: .center)
                    Image("市民")
                        .resizable()    // 画像サイズをフレームサイズに合わせる
                        .frame(width: 74, height: 105)
                }
                HStack{
                    Text("プレイヤー２")
                        .font(.system(size: 20))
                        .frame(width: 160, height: 50, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                    Image("警察")
                        .resizable()    // 画像サイズをフレームサイズに合わせる
                        .frame(width: 74, height: 105)
                    Spacer()
                        .frame(width: 30, height: 5, alignment: .center)
                    Image("市民")
                        .resizable()    // 画像サイズをフレームサイズに合わせる
                        .frame(width: 74, height: 105)
                }
                HStack{
                    Text("プレイヤー３")
                        .font(.system(size: 20))
                        .frame(width: 160, height: 50, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                    Image("DJ")
                        .resizable()    // 画像サイズをフレームサイズに合わせる
                        .frame(width: 74, height: 105)
                    Spacer()
                        .frame(width: 30, height: 5, alignment: .center)
                    Image("おばけ")
                        .resizable()    // 画像サイズをフレームサイズに合わせる
                        .frame(width: 74, height: 105)
                }
                HStack{
                    Text("プレイヤー４")
                        .font(.system(size: 20))
                        .frame(width: 160, height: 50, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                    Image("人狼")
                        .resizable()    // 画像サイズをフレームサイズに合わせる
                        .frame(width: 74, height: 105)
                    Spacer()
                        .frame(width: 30, height: 5, alignment: .center)
                    Image("警察")
                        .resizable()    // 画像サイズをフレームサイズに合わせる
                        .frame(width: 74, height: 105)
                }
                Spacer()
                
                NavigationLink(destination: GameResult()){
                    Text("Home")
                        .bold()
                        .font(.system(size: 30))
                        .frame(width: 190, height: 100, alignment: .center)
                        .foregroundColor(.black)
                        .background(Color.white)
                        .cornerRadius(20.0)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct GameResult_Previews: PreviewProvider {
    static var previews: some View {
        GameResult()
    }
}
