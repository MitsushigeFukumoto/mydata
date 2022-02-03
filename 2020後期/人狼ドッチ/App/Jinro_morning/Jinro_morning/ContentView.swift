//
//  ContentView.swift
//  Jinro_morning
//
//  Created by Mitsushige Fukumoto on 2020/10/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            ZStack{
                //Background
                Rectangle()//赤
                    .foregroundColor(Color(red: 100/255, green: 20/255, blue: 0/255))
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Text("早朝のアクション")
                        .font(.system(size: 30))
                        .frame(width: 300, height: 100, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                    Spacer()
                    Text("メインカードに選んだ役職によってアクションを行います。\n人狼→人狼同士の顔合わせ\n占い師→誰か１人のメインカードの確認\nそれ以外→自分の役職の再確認")
                        .font(.system(size: 20))
                        .frame(width: 300, height: 250, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                        .padding(.vertical)
                    Spacer()
                    
                    NavigationLink(destination:PlayerCheck()){
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
