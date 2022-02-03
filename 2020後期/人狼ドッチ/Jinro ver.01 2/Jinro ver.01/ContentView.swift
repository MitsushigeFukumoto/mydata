//
//  ContentView.swift
//  Jinro ver.01
//
//  Created by k19100kk on 2020/09/29.
//

import SwiftUI
import CoreData


struct ContentView: View {
    var body: some View {
        
        NavigationView{
            ZStack{
                //BackGround
                Rectangle()  //赤
                    .foregroundColor(Color(red: 100/255, green: 20/255, blue: 0/255))
                    .edgesIgnoringSafeArea(.all)  //全体にする
                
                Rectangle()  //グレー
                    .foregroundColor(Color(red: 119/255, green: 136/255, blue: 153/255))
                    .rotationEffect(Angle(degrees: 121))
                    .edgesIgnoringSafeArea(.all)
                
                //Tittle
                VStack{
                    Text("人狼ドッチ")
                        .font(.system(size: 50))
                        .frame(width: 300, height: 100, alignment: .center)
                        .background(Color.white.opacity(0.2))
                        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                        .padding(.top)
                    Text("ver.01")
                        .padding()
                    Spacer()
                    
                    //スタートボタン
                    NavigationLink(destination:PlayerNumber()){
                        Text("スタート")
                            .bold()
                            .font(.system(size: 30))
                            .frame(width: 190, height: 100, alignment: .center)
                            .foregroundColor(.black)
                            .background(Color.red.opacity(0.6))
                            .cornerRadius(20.0)
                            .padding()
                    }
                    Spacer()
                    
                    //ルールボタン
                    Button(action: {
                        //TODO
                    }) {
                    Text("ルール")
                        .bold()
                        .font(.system(size: 30))
                        
                        .frame(width: 190, height: 100, alignment: .center)
                        .foregroundColor(.black)
                        .background(Color.red.opacity(0.6))
                        .cornerRadius(20.0)
                        .padding()
                    }
                    Spacer()
                }
                .padding()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
