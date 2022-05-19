//
//  ChallengeProofView.swift
//  EcoDuty
//
//  Created by Apprenant 85 on 17/05/2022.
//
// RESTE À FAIRE :
//      Gestion des valeurs (données défi & passage de données vers le profil pour les points notamment)
//      Vérifier la navigation
//      Nettoyer le code des commentaires inutiles à la fin

import SwiftUI

struct ChallengeProofView: View {
    
    @EnvironmentObject var settings: GameSettings
    @Binding var challengePointsAdditional : Challenge
    
    @State var imageFromImagePicker = UIImage(named : "image-challenge-proof-picker")!
    @State private var isShowingImagePicker = false
    
    @State var showSuccessfulChallengeView = false
    
    var body: some View {
        
        ZStack {
            
            Color("cosmic-cobalt") // N'a pas l'air de marcher sans le init plus haut
                .ignoresSafeArea()
            
            VStack(spacing : 30) {
                
                // ÉLÉMENTS TEXTUELS : :
                VStack (alignment : .leading, spacing : 20){
                    Text(challengePointsAdditional.challengeTitle)
                        .font(.title)
                        .fontWeight(.bold)
                    Text("\(settings.levelUp())")
//                    Text("Comment valider ce défi ?")
                        .font(.title3)
                    Text("\(settings.score)")
//                    Text("""
//        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.
//        """)
                } // Fin VStack éléments textuels
                
                // ENCADRÉ BLANC :
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 10)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(("medium-slate-blue")), lineWidth: 7)
                                .frame(height : 375)
                        )
                        .foregroundColor(Color.white)
                        .frame(height: 370)
                    
                    VStack (spacing : 20) {
                        
                        // Image de base de l'ImagePicker (avec mascotte et instructions)
                        Image(uiImage : imageFromImagePicker)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 330, height: 250, alignment: .center)
                            .clipShape(RoundedRectangle(cornerRadius : 10))
                            .onTapGesture { isShowingImagePicker = true }
                        
                        //Spacer()
                        
                        // Bouton "Valider le défi" :
                        NavigationLink (destination: SuccessfulChallengeView_modal(closeSuccessfulChallengeView: $showSuccessfulChallengeView)) {
                            Button(action : {
                                showSuccessfulChallengeView.toggle()
                                settings.score+=challengePointsAdditional.challengePoints
                            }, label : {
                                Text("Vérifier le défi")
                                    .fontWeight(.bold)
                                    .frame(width : 180, height : 50)
                                    .foregroundColor(.white)
                                    .background(Color("cosmic-cobalt"))
                                    .cornerRadius(10) // À confirmer
                            }) // Fin bouton "Valider le défi"
                            .padding(.bottom, 40)
                        } // Fin NavigationLink
                        
                        //Spacer()
                        
                    } // Fin VStack correspondant à l'intérieur de l'encadré blanc
                    
                    
                } // Fin ZStack bloc encadré blanc
                
            } // Fin VStack
            .padding()
            .padding(.bottom)
            
            
            
        } // Fin ZStack
        .foregroundColor(.white)
        .sheet(isPresented: $isShowingImagePicker, content: { ImagePicker(imageFromImagePicker : $imageFromImagePicker)
        })
        .sheet(isPresented: $showSuccessfulChallengeView, content: {
            SuccessfulChallengeView_modal(closeSuccessfulChallengeView : $showSuccessfulChallengeView)
        })
        
        .environmentObject(settings)
        
        
        
    } // Fin body
    
}

struct ChallengeProofView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeProofView(challengePointsAdditional: .constant(challenges[0])).environmentObject(GameSettings())
    }
}
