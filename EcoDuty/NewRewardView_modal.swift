//
//  NewRewardView_modal.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import SwiftUI

struct NewRewardView_modal: View {
    var body: some View {
        ZStack  {
        Color("cosmic-cobalt")
                .ignoresSafeArea()
            // Appeller la struct RewardsModalStruct et y rentrer les paramètres voulu
            RewardsModalStruct(RewardsName: "Nom du Badge/Récompense", RewardsLevel: "5")
        }
    }

struct NewRewardView_modal_Previews: PreviewProvider {
    static var previews: some View {
        NewRewardView_modal()
    }
}
}

struct RewardsModalStruct: View {
    // Etat changement de couleur (bool)
    @State private var isChangingColor = false
    // Variable pour changer le nom de la récompense obtenue
    var RewardsName: String
    // Variable pour changer la valeur du niveau en text suivant le niveau sélectionné
    var RewardsLevel: String
    var body: some View {
        // Rectangle blanc principal avec stroke Bleu
        ZStack {
            Rectangle()
                .cornerRadius(20)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(("medium-slate-blue")), lineWidth: 14)
                    
                )
                .foregroundColor(Color.white)
                .frame(width: 335.82, height: 500.97)
                .shadow(radius: 3)
            // Snappy en haut à gauche
                VStack {
                    HStack {
                        Image("MascotHappyFaceCroppedRewardModal")
                        Spacer()
                            .frame(width: 220)
                    }
            } .padding(.bottom, 550)
            // Ensemble Text (Tu as atteint.. ---> [Nom du Badge] !
            VStack {
                Text("Tu as atteint le niveau [\(RewardsLevel)] ")
                    .fontWeight(.bold)
                    .foregroundColor(Color("cosmic-cobalt"))
                    .font(.title2)
            } .padding(.bottom, 170)
            
            VStack {
                Spacer()
                    .frame(height: 90)
                Text("Appuie sur le bouton ci-dessous pour récupérer ta récompense : [\(RewardsName)] !")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(width: 288, height: 83)
                    .foregroundColor(Color("cosmic-cobalt"))
                
                
            } .padding(.bottom, 120)
            // Bouton pour obtenir sa récompense avec changement d'état toggle()
            Button(action: {
            isChangingColor.toggle()
            
        }, label: {
            VStack {
                ZStack {
                    Rectangle()
                        .cornerRadius(20)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color(("cosmic-cobalt")), lineWidth: 4)
                        )
                        .foregroundColor(isChangingColor ? Color("cosmic-cobalt") : .white)
                        .frame(width: 290.26, height: 60.43)
                    Text(isChangingColor ? "Obtenu !" : "Obtenir")
                        .fontWeight(.bold)
                        .foregroundColor(isChangingColor ? .white : Color("cosmic-cobalt"))
                        .font(.largeTitle)
                    
                }
            } .padding(.top, 390)
        })
            // Cercle avec la récompense à l'intérieur (+ stroke)
            VStack {
                ZStack {
                    
                    Circle()
                        .background(
                            Circle()
                                .stroke(Color(("cosmic-cobalt")), lineWidth: 2)
                        )
                        .foregroundColor(Color.white)
                        .frame(width: 99.06, height: 99.06)
                        .shadow(radius: 3)
                    Image(systemName: "shield.fill")
                        .font(.system(size: 60))
                        .foregroundColor(Color("yellow-pantone"))
                } .padding(.top, 200)
            }
            // Encadrement Félicitations !
            VStack {
                ZStack {
                    Rectangle()
                        .cornerRadius(20)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color(("cosmic-cobalt")), lineWidth: 4)
                            
                        )
                        .foregroundColor(Color.white)
                        .frame(width: 248.65, height: 54.48)
                    Text("Félicitations !")
                        .fontWeight(.bold)
                        .foregroundColor(Color("cosmic-cobalt"))
                        .font(.largeTitle)
                    
                }
            } .padding(.bottom, 400)
        }
    }
}
