//
//  Discussion2.swift
//  Jinro_morning
//
//  Created by Mitsushige Fukumoto on 2020/11/02.
//

import SwiftUI

struct Discussion2: View {
    var toDate = Calendar.current.date(byAdding: .minute, value: 3, to: Date())!
    var body: some View {
        ZStack{
            //BackGround
            Rectangle()  //赤
                .foregroundColor(Color(red: 100/255, green: 20/255, blue: 0/255))
                .edgesIgnoringSafeArea(.all)  //全体にする
            VStack{
                TimerView2(setDate: toDate)
                    .font(.system(size: 50))
                    .frame(width: 250, height: 110, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(20.0)
                    .padding(.top)
                Spacer()
                HStack {
                    Text("現在以下の役職がいます")
                        .font(.system(size: 20))
                        .frame(width: 260, height: 40, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                        .padding(.top)
                }
                HStack {
                    Image("人狼")
                        .resizable()    // 画像サイズをフレームサイズに合わせる
                        .frame(width: 74, height: 105)
                    Image("人狼")
                        .resizable()    // 画像サイズをフレームサイズに合わせる
                        .frame(width: 74, height: 105)
                    Spacer()
                        .frame(width: 30, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Image("市民")
                        .resizable()    // 画像サイズをフレームサイズに合わせる
                        .frame(width: 74, height: 105)
                    Image("市民")
                        .resizable()    // 画像サイズをフレームサイズに合わせる
                        .frame(width: 74, height: 105)
                }
                HStack {
                    Text("人狼")
                        .font(.system(size: 20))
                        .frame(width: 74, height: 40, alignment: .center)
                        .cornerRadius(20.0)
                        .background(Color.white)
                        .cornerRadius(20.0)
                    Text("人狼")
                        .font(.system(size: 20))
                        .frame(width: 74, height: 40, alignment: .center)
                        .cornerRadius(20.0)
                        .background(Color.white)
                        .cornerRadius(20.0)
                    Spacer()
                        .frame(width: 30, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("市民")
                        .font(.system(size: 20))
                        .frame(width: 74, height: 40, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                    Text("市民")
                        .font(.system(size: 20))
                        .frame(width: 74, height: 40, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                }
                HStack {
                    Image("占い師")
                        .resizable()    // 画像サイズをフレームサイズに合わせる
                        .frame(width: 74, height: 105)
                    Image("警察")
                        .resizable()    // 画像サイズをフレームサイズに合わせる
                        .frame(width: 74, height: 105)
                    Spacer()
                        .frame(width: 30, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Image("DJ")
                        .resizable()    // 画像サイズをフレームサイズに合わせる
                        .frame(width: 74, height: 105)
                    Image("市民")
                        .resizable()    // 画像サイズをフレームサイズに合わせる
                        .frame(width: 74, height: 105)
                }
                HStack {
                    Text("占い師")
                        .font(.system(size: 20))
                        .frame(width: 74, height: 40, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                    Text("警察")
                        .font(.system(size: 20))
                        .frame(width: 74, height: 40, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                    Spacer()
                        .frame(width: 30, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("DJ")
                        .font(.system(size: 20))
                        .frame(width: 74, height: 40, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                    Text("おばけ")
                        .font(.system(size: 20))
                        .frame(width: 74, height: 40, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20.0)
                }
                Spacer()
                NavigationLink(destination:EmptyView()){
                    Text("FINISH")
                        .font(.system(size: 30))
                        .frame(width: 150, height: 90, alignment: .center)
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                        .padding(.bottom,20)
                        .foregroundColor(.black)
                }
                /*Button("FINISH") {
                    self.showingAlert = true
                }
                .font(.system(size: 30))
                .frame(width: 150, height: 90, alignment: .center)
                .background(Color.white.opacity(0.9))
                .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                .padding(.bottom,20)
                .foregroundColor(.black)
                .alert(isPresented: $showingAlert) {
                        Alert(title: Text("終了確認"),
                        message: Text("議論を終了してもよろしいですか？"),
                        primaryButton: .cancel(Text("いいえ")),
                        secondaryButton: .default(Text("はい"),
                                        action: {})) // ボタンがタップされた時の処理
                }*/
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Discussion2_Previews: PreviewProvider {
    static var previews: some View {
        Discussion2()
    }
}

struct TimerView2: View{
    @State var nowDate: Date = Date()
    @State private var showingAlert = false
    let setDate: Date
    var timer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            self.nowDate = Date()
        }
    }

    var body: some View {
        Text(TimerFunction(from: setDate))
            .onAppear(perform: {
                self.timer
            })
    }
    
    func TimerFunction(from date: Date) -> String {
        var calendar = Calendar(identifier: .japanese)
        var timeValue = calendar
            .dateComponents([.day, .hour, .minute, .second], from: nowDate, to: setDate)
        if (timeValue.second!<0){
            timeValue.second = 0
            timeValue.minute = 0
        }
        return String(format: "%02d:%02d",
                    timeValue.minute!,
                    timeValue.second!)
    }

}
