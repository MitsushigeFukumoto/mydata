//
//  Control.swift
//  Jinro ver.01
//
//  Created by k19100kk on 2020/10/09.
//

import SwiftUI


class Control : ObservableObject{
    
    //Player 1
    class P1: Control {
        @Published var name = ""            //プレイヤー名
        @Published var M_job = 0            //メイン役職
        @Published var S_job = 0            //サブ役職
        @Published var Vote = 0             //投票先
    }
    
    //Player 2
    class P2: Control {
        @Published var name = ""            //プレイヤー名
        @Published var M_job = 0            //メイン役職
        @Published var S_job = 0            //サブ役職
        @Published var Vote = 0             //投票先
    }
    
    //Player 3
    class P3: Control {
        @Published var name = ""            //プレイヤー名
        @Published var M_job = 0            //メイン役職
        @Published var S_job = 0            //サブ役職
        @Published var Vote = 0             //投票先
    }
    
    //Player 4
    class P4: Control {
        @Published var name = ""            //プレイヤー名
        @Published var M_job = 0            //メイン役職
        @Published var S_job = 0            //サブ役職
        @Published var Vote = 0             //投票先
    }
    
    //役職
    @Published var Job = ["人狼":1, "市民":2, "占い師":3, "警察":4,"DJ":5,"おばけ":6,"裏切り物":7]
    
    
    @Published var PlayerCnt :Int = 3
    //プレイヤー人数までのカウント
    func Playercnt(){
        PlayerCnt = PlayerCnt + 1
    }
}
