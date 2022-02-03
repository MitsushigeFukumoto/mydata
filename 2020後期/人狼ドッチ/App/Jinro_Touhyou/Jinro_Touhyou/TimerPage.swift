//
//  TimerPage.swift
//  Jinro_Touhyou
//
//  Created by Mitsushige Fukumoto on 2020/11/02.
//

import SwiftUI

struct TimerPage:View {
    var time: Int = 5
    var body: some View {
        //let toDate = Calendar.current.date(byAdding:.minute, value: time, to:Date())
        TimerView(setDate: Calendar.current.date(byAdding:.second, value: time, to:Date())!)
            .onAppear(perform: {
                if(time == 0){
                    time = 10
                }
            })
    }
}


struct Timer_Previews: PreviewProvider{
    static var previews: some View{
        Group {
            TimerPage()
        }
    }
}

import SwiftUI

struct TimerView : View {

   @State var nowD:Date = Date()
   let setDate:Date

   var timer: Timer {
       Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
           self.nowD = Date()
       }
   }

   var body: some View {
       Text(TimerFunc(from: setDate))
           .font(.largeTitle)
           .onAppear(perform: {
                          _ = self.timer
                      })
    }

   func TimerFunc(from date:Date)->String{
       let cal = Calendar(identifier: .japanese)

       let timeVal = cal.dateComponents([.hour,.minute,.second], from: nowD,to: setDate)

       return String(format: "%02d:%02d:%02d",
       timeVal.hour ?? 00,
       timeVal.minute ?? 00,
       timeVal.second ?? 00)

    }

}
