//
//  ContentView.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import SwiftUI

class GameSettings: ObservableObject {
    @Published var score = 200000
    
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
    @State private var selectionTab = 0
    @State private var onBoardDone = false
    @StateObject var settings = GameSettings()
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
        UITabBar.appearance().backgroundColor = UIColor(named: "cosmic-cobalt")
    }
    var body: some View {
        ZStack {
            TabView(selection: $selectionTab) {
                ChallengeView()
                    .tabItem {
                        Image(systemName: "leaf.circle.fill")
                        Text("Challenge")
                    }.tag(1)
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.circle.fill")
                            .foregroundColor(Color.white)
                        Text("Profil")
                    }.tag(2)
                RewardsView()
                    .tabItem {
                        Image(systemName: "gift.circle.fill")
                        Text("Récompenses")
                    }.tag(3)
                RankingView()
                    .tabItem {
                        Image(systemName: "star.circle.fill")
                        Text("Classement")
                    }.tag(4)
            }
            .zIndex(onBoardDone ? 10 : 0)
            .environmentObject(settings)
            .accentColor(Color("yellow-pantone"))
        .ignoresSafeArea()
            SwiftUIView___OnboardingView(endOnBoarding: $onBoardDone).tag(0)
                            .zIndex(onBoardDone ? 0 : 10)
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
