//
//  ContentView.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import SwiftUI

struct ContentView: View {

    
    init() {
        UITabBar.appearance().barTintColor = UIColor(Color("yellow-pantone"))
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
    }
    var body: some View {
        TabView {
            ChallengeView()
                .tabItem {
                    Image(systemName: "leaf.circle.fill")
                    Text("Challenge")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                        .foregroundColor(Color.white)
                    Text("Profil")
                }
            RewardsView()
                .tabItem {
                    Image(systemName: "gift.circle.fill")
                    Text("Récompenses")
                }
            RankingView()
                .tabItem {
                    Image(systemName: "star.circle.fill")
                    Text("Classement")
                }
        }
        .accentColor(Color("yellow-pantone"))
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
