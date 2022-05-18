//
//  NationalRankingView_option.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import SwiftUI

struct NationalRankingView_option: View {
    var body: some View {
         ZStack {
                Color("cosmic-cobalt")
                    .ignoresSafeArea()
            VStack {
                VStack {
                    UserRankNumberOne(userName: "Bansao", userPoints: "2 817 281", userPosition: "1", userImage: "neon-8k")
                        .padding(5)
                    UserRankNumberTwo(userName: "Koulas", userPoints: "2 750 721", userPosition: "2", userImage: "boule-8k")
                        .padding(5)
                    UserRankNumberThree(userName: "Nusab", userPoints: "2 498 291", userPosition: "3", userImage: "montagne-8k")
                        .padding(5)
                    UserRankGeneral(userName: "Wojtek", userPoints: "2 290 120", userPosition: "4", userImage: "femme-8k")
                        .padding(5)
                    UserRankGeneral(userName: "Lawid", userPoints: "1 992 821", userPosition: "5", userImage: "bocal-8k")
                        .padding(5)
                    UserRankGeneral(userName: "Teczer", userPoints: "1 917 281", userPosition: "6", userImage: "ArianaGrande")
                        .padding(5)
                    UserRankGeneral(userName: "Justine", userPoints: "1 789 281", userPosition: "7", userImage: "ariana-grande-white")
                        .padding(5)
                    UserRankGeneral(userName: "Claire", userPoints: "1 720 000", userPosition: "8", userImage: "chat-8k")
                        .padding(5)
//                    UserRankGeneral(userName: "Sabans", userPoints: "1 678 921", userPosition: "9", userImage: "aigle-8k")
//                        .padding(5)
//                    UserRankGeneral(userName: "Clara", userPoints: "1 526 928", userPosition: "10", userImage: "juice-wrld")
                    
                }
                Spacer()
                    .frame(height: 10)
                MyActualRank(userName: "Teczer", userPoints: "1 917 281", userPosition: "6", userImage: "ArianaGrande")
            }
        }
    }
}

struct NationalRankingView_option_Previews: PreviewProvider {
    static var previews: some View {
        NationalRankingView_option()
    }
}
