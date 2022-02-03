//
//  JobSelect.swift
//  Jinro ver.01
//
//  Created by k19100kk on 2020/10/12.
//

import SwiftUI

struct JobSelect: View {
    //****************************************
    @ObservedObject var p1: Control.P1   //Controlというクラスで共有
    @ObservedObject var p2: Control.P2   //Controlというクラスで共有
    @ObservedObject var p3: Control.P3   //Controlというクラスで共有
    @ObservedObject var p4: Control.P4   //Controlというクラスで共有
    @ObservedObject var control: Control
    @State var Buttonuse = true
    @State var Playercnt = Control.Playercnt(Control())
    var a = Control.Playercnt(Control())
    //****************************************
    
    var body: some View {
        
        ZStack{
            //BackGround
            Rectangle()  //赤
                .foregroundColor(Color(red: 100/255, green: 20/255, blue: 0/255))
                .edgesIgnoringSafeArea(.all)  //全体にする
            
            VStack{
                
                Text("メイン役職を\n選んでください")
                    .font(.system(size: 26))
                    .frame(width: 320, height: 90, alignment: .center)
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                    .padding(.top,0)
                Spacer()
                
                //画像表示
                Image("Player")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.white.opacity(0.9))
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth:4).shadow(radius: 10))
                Spacer()
                
                
                //OKボタン
                Button(action: {
                    if control.PlayerCnt == 3{
                        self.Buttonuse.toggle()
                    }else{
                        Playercnt()
                    }
                }) {
                    if Buttonuse==false{
                        NavigationLink(destination:CheckPlayer(p1:p1,p2:p2,p3:p3,p4:p4,control: Control())){
                            Text("OK")
                                .font(.system(size: 30))
                                .frame(width: 150, height: 90, alignment: .center)
                                .background(Color.white.opacity(0.9))
                                .cornerRadius(20.0)
                                .foregroundColor(.black)
                        }
                    }else{
                        NavigationLink(destination:Test()){
                            Text("OK")
                                .font(.system(size: 30))
                                .frame(width: 150, height: 90, alignment: .center)
                                .background(Color.white.opacity(0.9))
                                .cornerRadius(20.0)
                                .foregroundColor(.black)
                        }
                    }
                }
                Spacer()
                
                
                //画像表示
                Image("Player")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.white.opacity(0.9))
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth:4).shadow(radius: 10))
                Spacer()
                
                
                //OKボタン
                Button(action: {
                    if control.PlayerCnt == 3{
                        self.Buttonuse.toggle()
                    }else{
                        Playercnt()
                    }
                }) {
                    if Buttonuse==true{
                        NavigationLink(destination:CheckPlayer(p1:p1,p2:p2,p3:p3,p4:p4,control: Control())){
                            Text("OK")
                                .font(.system(size: 30))
                                .frame(width: 150, height: 90, alignment: .center)
                                .background(Color.white.opacity(0.9))
                                .cornerRadius(20.0)
                                .padding(.bottom,20)
                                .foregroundColor(.black)
                        }
                    }else{
                        NavigationLink(destination:Test()){
                            Text("OK")
                                .font(.system(size: 30))
                                .frame(width: 150, height: 90, alignment: .center)
                                .background(Color.white.opacity(0.9))
                                .cornerRadius(20.0)
                                .padding(.bottom,20)
                                .foregroundColor(.black)
                        }
                    }
                }
                
                
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct JobSelect_Previews: PreviewProvider {
    static var previews: some View {
        JobSelect(p1: Control.P1(),p2: Control.P2(),p3: Control.P3(),p4: Control.P4(),control: Control())
    }
}
