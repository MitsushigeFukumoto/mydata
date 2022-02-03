//
//  CheckPlayer.swift
//  Jinro ver.01
//
//  Created by k19100kk on 2020/10/08.
//

import SwiftUI

struct CheckPlayer: View {
    //****************************************
    @ObservedObject var p1: Control.P1   //Controlというクラスで共有
    @ObservedObject var p2: Control.P2   //Controlというクラスで共有
    @ObservedObject var p3: Control.P3   //Controlというクラスで共有
    @ObservedObject var p4: Control.P4   //Controlというクラスで共有
    
    @ObservedObject var control: Control
    @State private var Buttonuse = false
    //****************************************
    
    var body: some View {
        
        
        
        ZStack{
            //BackGround
            Rectangle()  //赤
                .foregroundColor(Color(red: 100/255, green: 20/255, blue: 0/255))
                .edgesIgnoringSafeArea(.all)  //全体にする
            
            VStack{
                
                
                Text("このプレイヤーに端末を渡してください")
                    .font(.system(size: 30))
                    .frame(width: 320, height: 100, alignment: .center)
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                    .padding(.top,0)
                Spacer()
                
                //画像表示
                HStack {
                    Image(systemName: "speaker.fill")
                        .resizable()
                        .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.white.opacity(0.9))
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white,lineWidth:4).shadow(radius: 10))
                }
                Spacer()
                
                //処理後に名前を表示させる
                Text("\(p1.name)")
                    .font(.system(size: 30))
                    .frame(width: 320, height: 100, alignment: .center)
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                    .padding(.top,20)
                Spacer()
                
                //OKボタン
                
                Button(action: {
                    self.Buttonuse.toggle()
                }) {
                    NavigationLink(destination:JobRule_01(p1:p1,p2:p2,p3:p3,p4:p4)){
                        Text("OK")
                            .font(.system(size: 30))
                            .frame(width: 150, height: 90, alignment: .center)
                            .background(Color.white.opacity(0.9))
                            .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                            .padding(.bottom,20)
                            .foregroundColor(.black)
                    }
                }
                if Buttonuse == true {
                    
                }
                    
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct CheckPlayer_Previews: PreviewProvider {
    static var previews: some View {
        CheckPlayer(p1: Control.P1(),p2: Control.P2(),p3: Control.P3(),p4: Control.P4(),control: Control())
    }
}
