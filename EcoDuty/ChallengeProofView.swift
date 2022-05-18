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
                        Text("Titre du défi")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Comment valider ce défi ?")
                            .font(.title3)
                        Text("""
    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.
    """)
                    } // Fin VStack éléments textuels
                    
                    // ENCADRÉ BLANC :
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 10)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(("medium-slate-blue")), lineWidth: 7)
                            )
                            .foregroundColor(Color.white)
                        //.frame(width: 280, height: 200)
                        
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
                                }, label : {
                                    Text("Valider le défi")
                                        .fontWeight(.bold)
                                        .frame(width : 180, height : 50)
                                        .foregroundColor(.white)
                                        .background(Color("cosmic-cobalt"))
                                        .cornerRadius(10) // À confirmer
                                }) // Fin bouton "Valider le défi"
                            } // Fin NavigationLink
                            
                            //Spacer()
                            
                        } // Fin VStack correspondant à l'intérieur de l'encadré blanc
                        
                        
                    } // Fin ZStack bloc encadré blanc
                    
                } // Fin VStack
                .padding()
                .padding(.bottom)
                
                // NAVBAR :
//                .toolbar {
//
//                    // Bouton retour :
//                    ToolbarItemGroup(placement : .navigationBarLeading) {
//                        Button(action : {
//                            hideKeyboard()
//                        }, label : {
//                            HStack {
//                                Image(systemName: "chevron.left")
//                                Text("Retour")
//                            } // Fin HStack visuel bouton retour
//                        }) // Fin bouton
//                    }
//
//                    // Petit titre de l'écran (plus simple pour changer sa couleur que le navigationTitle)
//                    ToolbarItemGroup(placement : .principal) {
//                        Text("Défi en cours")
//                            .fontWeight(.bold)
//                    }
//
//                }
                
            } // Fin ZStack
            .foregroundColor(.white)
            .sheet(isPresented: $isShowingImagePicker, content: { ImagePicker(imageFromImagePicker : $imageFromImagePicker)
            })
            .sheet(isPresented: $showSuccessfulChallengeView, content: {
                SuccessfulChallengeView_modal(closeSuccessfulChallengeView : $showSuccessfulChallengeView)
            })
            
        
    } // Fin body
    
}

struct ChallengeProofView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeProofView()
    }
}
