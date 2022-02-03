//
//  JobRule_02.swift
//  Jinro ver.01
//
//  Created by k19100kk on 2020/10/12.
//

import SwiftUI

struct JobRule_02: View {
    //****************************************
    @ObservedObject var p1: Control.P1   //Controlというクラスで共有
    @ObservedObject var p2: Control.P2   //Controlというクラスで共有
    @ObservedObject var p3: Control.P3   //Controlというクラスで共有
    @ObservedObject var p4: Control.P4   //Controlというクラスで共有
    //****************************************
    
    var body: some View {
        ZStack{
            //BackGround
            Rectangle()  //赤
                .foregroundColor(Color(red: 100/255, green: 20/255, blue: 0/255))
                .edgesIgnoringSafeArea(.all)  //全体にする
            
            VStack{
                
                //選ばれた役職の説明
                Text("役職の説明")
                    .font(.system(size: 30))
                    .frame(width: 370, height: 300, alignment: .center)
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(20.0)
                    .padding(.top,0)
                Spacer()
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                //選ばれた役職の説明
                Text("役職の説明")
                    .font(.system(size: 30))
                    .frame(width: 370, height: 300, alignment: .center)
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(20.0)
                    .padding(.top,0)
                Spacer()
                
                //OKボタン
                Button(action: {
                    
                }) {
                    NavigationLink(destination:JobSelect(p1:p1,p2:p2,p3:p3,p4:p4,control: Control())){
                        Text("OK")
                            .font(.system(size: 30))
                            .frame(width: 150, height: 90, alignment: .center)
                            .background(Color.white.opacity(0.9))
                            .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                            .padding(.bottom,20)
                            .foregroundColor(.black)
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct JobRule_02_Previews: PreviewProvider {
    static var previews: some View {
        JobRule_02(p1: Control.P1(),p2: Control.P2(),p3: Control.P3(),p4: Control.P4())
    }
}
