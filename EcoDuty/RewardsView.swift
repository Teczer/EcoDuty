//
//  RewardsView.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import SwiftUI

struct RewardsView: View {
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().tintColor = UIColor.white
    }
    var body: some View {
        NavigationView {
        ZStack  {
        Color("cosmic-cobalt")
                .ignoresSafeArea()
            
                .navigationBarTitle("Récompenses", displayMode: .inline
                )
            // NAVBAR :
//                            .toolbar {
//                              ToolbarItemGroup(placement : .principal) {
//                                  VStack {
//                                      Spacer()
//                                      VStack {
//                                          Text("Récompenses")
//                                            .foregroundColor(.white)
//                                            .fontWeight(.bold)
//                                          Rectangle()
//                                          .frame(width: 375, height: 1)
//                                              .foregroundColor(Color.white)
//                                      }
//                                  }
//                                }
//
//                            } // FIN TOOLBAR/NAVBAR
            HStack {
                ScrollView {
                    ZStack {
                        HStack {
                        SnappyCircle()
                            Spacer()
                                .frame(width: 300)
                        }
                            .padding(.bottom, 1035)
                        VStack(alignment: .leading) {
                            HStack {
                                LevelRewards(niveauText: "Niveau 1")
                                CheckmarkRewards()
                            }
                            HStack {
                            LevelRewards(niveauText: "Niveau 2")
                                CheckmarkRewards()
                            }
                                .padding(.top, 31)
                            HStack {
                            LevelRewards(niveauText: "Niveau 3")
                                CheckmarkRewards()
                            }
                            .padding(.top, 31)
                            HStack {
                            LevelRewards(niveauText: "Niveau 4")
                                CheckmarkRewards()
                            }
                            .padding(.top, 31)
                                NavigationLink(destination: NewRewardView_modal()) {
                                    LevelCollectRewards(niveauText: "Niveau 5")
                                }
                                .padding(.top, 31)
                            HStack {
                            LevelRewards(niveauText: "Niveau 6")
                            LockIconRewards()
                            }
                            .padding(.top, 31)
                            HStack {
                            LevelRewards(niveauText: "Niveau 7")
                            LockIconRewards()
                            }
                            .padding(.top, 31)
                            HStack {
                            LevelRewards(niveauText: "Niveau 8")
                            LockIconRewards()
                            }
                            .padding(.top, 31)
                            HStack {
                            LevelRewards(niveauText: "Niveau 9")
                            LockIconRewards()
                            }
                            .padding(.top, 31)
                            HStack {
                            LevelRewards(niveauText: "Niveau 10")
                            LockIconRewards()
                            }
                            .padding(.top, 31)
                        }
                    }
                }
                Spacer()
            }.padding(28)
        }
        } .accentColor(Color.white) 
  }
}

struct RewardsView_Previews: PreviewProvider {
    static var previews: some View {
        RewardsView()
            .previewInterfaceOrientation(.portrait)
    }
}
// Ensemble d'un rectangle avec ses composants en non surbrillance (Niveau atteint ou non)
struct LevelRewards: View {
    // Variable pour changer le texte à l'intérieur du rectangle
    var niveauText: String
    var body: some View {
        ZStack {
            // Rectangle principal blanc
            Rectangle()
                .frame(width: 264.89, height: 63.33)
                .cornerRadius(20)
                .foregroundColor(Color.white)
                .shadow(color: .black, radius: 10, x: 5, y: 7)
            // Rectangle design tout à droite en Bleu/violet
            HStack {
                Spacer()
                    .frame(width: 204.5)
                Rectangle()
                    .frame(width: 60.37, height: 63.33)
                    .cornerRadius(20)
                    .foregroundColor(Color("maximum-blue-purple"))
            }
            // Texte à l'intérieur du rectangle (Niveau ..) modifiable via paramètres !
            HStack {
                Text(niveauText)
                    .fontWeight(.bold)
                    .foregroundColor(Color("cosmic-cobalt"))
                    .font(.title)
                Spacer()
                    .frame(width: 40)
            }
            // Cercle avec Stroke pour le Badge/La récompense
            HStack {
                Spacer()
                    .frame(width: 170)
                Circle()
                    .background(
                        Circle()
                            .stroke(Color(("cosmic-cobalt")), lineWidth: 2)
                    )
                    .foregroundColor(Color.white)
                    .frame(width: 63.07, height: 63.33)
                    .shadow(radius: 3)
            }
            // Badge/Récompense à l'intérieur du cercle
            HStack {
                Spacer()
                    .frame(width: 170)
                Image(systemName: "shield.fill")
                    .font(.largeTitle)
                    .foregroundColor(Color("yellow-pantone"))
            }
        }
    }
}
