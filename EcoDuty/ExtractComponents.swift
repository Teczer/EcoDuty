//
//  ExtractComponents.swift
//  EcoDuty
//
//  Created by Apprenant 98 on 12/05/2022.
//

import SwiftUI

struct ExtractComponents: View {
    var body: some View {
        ZStack  {
        Color("cosmic-cobalt")
                .ignoresSafeArea()
            
            LevelCollectRewards(niveauText: "Niveau 5")
            
        }
    }
}





struct ExtractComponents_Previews: PreviewProvider {
    static var previews: some View {
        ExtractComponents()
    }
}

// Icône qui apparaît lorsque l'utilisateur a récupérer sa récompense
struct CheckmarkRewards: View {
    var body: some View {
        Image(systemName: "checkmark.shield.fill")
            .foregroundColor(Color("yellow-pantone"))
            .font(.system(size: 50))
    }
}
// Snappy dans un cercle blanc
struct SnappyCircle: View {
    var body: some View {
        ZStack {
            //Cercle Blanc
            Circle()
                .frame(width: 217, height: 217)
                .foregroundColor(Color.white)
            VStack {
                // Le vilain Snappy
                HStack {
                    Spacer()
                        .frame(width: 55)
                    Image("MascotHappyFaceCropped")
                    
                }
                Spacer()
                    .frame(height: 85)
            }
        }
    }
}
// TabView À NE PAS TOUCHER !!!!!
struct TabViewEcoDuty: View {
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

// Bouton plus gros en Jaune lorsqu'une récompense est à récupérer (Visuel)
struct LevelCollectRewards: View {
    // Variable pour changer en texte le niveau en question
    var niveauText: String
    var body: some View {
        ZStack {
            // Rectangle principal jaune pour définir un surbrillance
            Rectangle()
                .frame(width: 306.61, height: 73.33)
                .cornerRadius(20)
                .foregroundColor(Color("yellow-pantone"))
                .shadow(color: .black, radius: 10, x: 5, y: 7)
            // Design mini rectangle Bleu Violet à droite
            HStack {
                Spacer()
                    .frame(width: 236.5)
                Rectangle()
                    .frame(width: 69.87, height: 73.33)
                    .cornerRadius(20)
                    .foregroundColor(Color("maximum-blue-purple"))
            }
            // Text du rectangle : Niveau ..)
            HStack {
                Text(niveauText)
                    .fontWeight(.bold)
                    .foregroundColor(Color("cosmic-cobalt"))
                    .font(.largeTitle)
                Spacer()
                    .frame(width: 40)
            }
            // Cercle avec Strkoe
            HStack {
                Spacer()
                    .frame(width: 200)
                Circle()
                    .background(
                        Circle()
                            .stroke(Color(("cosmic-cobalt")), lineWidth: 2)
                    )
                    .foregroundColor(Color.white)
                    .frame(width: 73, height: 73.33)
                    .shadow(radius: 3)
            }
            // Récompense/Badge à l'intérieur du cercle
            HStack {
                Spacer()
                    .frame(width: 200)
                Image(systemName: "shield.fill")
                    .font(.largeTitle)
                    .foregroundColor(Color("yellow-pantone"))
            }
        }
    }
}
// Icône qui apparaît lorsque l'utilisateur n'a pas atteint le niveau requis pour débloquer la récompense
struct LockIconRewards: View {
    var body: some View {
        Image(systemName: "lock.fill")
            .foregroundColor(Color("maximum-blue-purple"))
            .font(.system(size: 50))
    }
}
