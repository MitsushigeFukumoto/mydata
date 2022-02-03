//
//  TouhyouRule.swift
//  Jinro_Touhyou
//
//  Created by Mitsushige Fukumoto on 2020/11/02.
//

import SwiftUI

struct TouhyouRule: View {
    var body: some View {
        ZStack{
            //Background
            Rectangle()//赤
                .foregroundColor(Color(red: 100/255, green: 20/255, blue: 0/255))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("追放投票")
                    .font(.system(size: 30))
                    .frame(width: 300, height: 100, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(20.0)
                Spacer()
                Text("ゲーム開始時に1人２つの役職が配られます。\n自分が使いたい役職をメイン役職として選択します。\n")
                    .font(.system(size: 25))
                    .frame(width: 340, height: 300, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(20.0)
                    .padding(.vertical)
                Spacer()
                
                NavigationLink(destination: TouhyouSelect()){
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

struct TouhyouRule_Previews: PreviewProvider {
    static var previews: some View {
        TouhyouRule()
    }
}
