//
//  ContentView.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import SwiftUI

class GameSettings: ObservableObject {
    @Published var score = 0
    
    func levelUp() -> String {
            switch score {
            case 0..<20000:
                return "Niveau 1"
            case 20000..<50000:
                return "Niveau 2"
            case 50000..<90000:
                return "Niveau 3"
            case 90000..<200000:
                return"Niveau 4"
            case 200000..<350000:
                return "Niveau 5"
            case 350000..<650000 :
                return "Niveau 5"
            case 650000..<1000000 :
                return "Niveau 5"
            case 1000000..<1500000 :
                return "Niveau 5"
            default:
                return "Niveau 1"
            }
        }
    
}

struct ContentView: View {

    
    init() {
//        UITabBar.appearance().barTintColor = UIColor(Color("yellow-pantone"))
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
        UITabBar.appearance().backgroundColor = UIColor(named: "cosmic-cobalt")
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
