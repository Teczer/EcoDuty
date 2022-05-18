//
//  PreferencesView.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//
// RESTE À FAIRE :
//      Revoir trucs bizarres sur le Simulator (fond du forme et tout est très bas)
//      Revoir le bouton "enregistrer"
//      Transformer bouton "back" en "retour"
//      Décider si on garde le jaune ou pas pour les tags (ou si on remet du blanc à la place)
//      Modifier le nom des 2 variables en franglais plus bas
//      Gestion des valeurs et du passage de données
//      Enlever la NavigationView une fois le NavigationLink configuré avec la ChallengeView
//      Nettoyer le code des commentaires inutiles à la fin

import SwiftUI

struct PreferencesView: View {
    
    @State var easy: Bool
    @State var medium: Bool
    @State var hard: Bool
    @State var inDoor: Bool
    @State var outDoor: Bool
    @State var tagAnimals = false
    @State var tagWaste = false
    @State var tagFood = false
    @State var tagNature = false
    @State var tagManif = false
    @Binding var chosenPreferences: Preferences
    @State private var showAlert = false
    @State private var changeColorAnimals = false
    @State private var changeColorEngagement = false // Changer nom variable car franglais ? Remplacer par changeColorCommitment ?
    @State private var changeColorNature = false
    @State private var changeColorDéchets = false // Changer nom variable car franglais ? Remplacer par changeColorWaste ?
    
    
    //@Binding var pref: Preference
    var body: some View {
        
        ZStack {
            
            Color("cosmic-cobalt")
                .ignoresSafeArea()
            
            VStack {
                
                VStack (alignment : .leading, spacing : 20) {
                    
                    Text("Personnalise tes défis !")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("""
Quels types de défis as-tu envie de relever ?
""")
                    .font(.title3)
                } // Fin VStack éléments textuels
                .foregroundColor(.white)
                .padding()
                .offset(y : -40)
                
                
                Form {
                    
                    // SECTION NIVEAUX DE DIFFICULTÉ :
                    Section (header : Text("Niveaux de difficulté")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    ) {
                        
                        VStack(alignment: .leading) {
                            
                            DifficultyLevelView (howDifficult: $easy, firstImageColor: Color("cosmic-cobalt"), secondImageColor: Color("maximum-blue-purple"), thirdImageColor: Color("maximum-blue-purple"), text: "Au calme")
                            DifficultyLevelView (howDifficult: $medium, firstImageColor: Color("cosmic-cobalt"), secondImageColor: Color("cosmic-cobalt"), thirdImageColor: Color("maximum-blue-purple"), text: "En bonne voie")
                            DifficultyLevelView(howDifficult: $hard, firstImageColor: Color("cosmic-cobalt"), secondImageColor: Color("cosmic-cobalt"), thirdImageColor: Color("cosmic-cobalt"), text: "Plus chaud que le climat")
                            
                            
                        } // Fin VStack "Niveaux de difficulté"
                    } // FIN SECTION NIVEAUX DE DIFFICULTÉ
                    
                    // SECTION MODES D'ACTION :
                    Section (header : Text("Modes d'action")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    ) {
                        VStack(alignment:.leading) {
                            ActionTypeView(toggleActionType: $inDoor, image: "iphone", text: "En ligne")
                            ActionTypeView(toggleActionType: $outDoor, image: "figure.wave", text: "Sur le terrain")
                        } // Fin VStack modes d'action
                    } // FIN SECTION MODES D'ACTION
                    
                    // SECTION TAGS :
                    Section (header : Text("Thématiques")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    ) {
                        
                        VStack {
                            
                            // Première ligne de tags :
                            HStack {
                                
                                // Tag "#animaux" :
                                ExtractedTag(changeTagColor: $changeColorAnimals, tagLabel: "#animaux", tagFrameWidth: 100) // Fin bouton tag "#animaux"
                                
                                // Tag "#engagement" :
                                ExtractedTag(changeTagColor: $changeColorEngagement, tagLabel: "#engagement", tagFrameWidth: 130)
                                
                            } // Fin HStack première ligne tags
                            
                            // Deuxième ligne de tags :
                            HStack {
                                
                                // Tag "#déchets" :
                                ExtractedTag(changeTagColor: $changeColorDéchets, tagLabel: "#déchets", tagFrameWidth: 100)
//
                                
                                // Tag "#nature" :
                                ExtractedTag(changeTagColor: $changeColorNature, tagLabel: "#nature", tagFrameWidth: 90)
                                
                            } // Fin HStack seconde ligne de tags
                        } // FIN VSTACK INTERNE SECTION TAGS
                        //.buttonStyle(BorderedButtonStyle()) // Produit des zones grises bizarres derrière les tags
                        .buttonStyle(.plain) // Disparition des zones grises bizarres et tout a l'air de fonctionner normalement !
                        
                    } // FIN SECTION TAGS
                    .listRowBackground(Color("cosmic-cobalt")) // Permet de changer la couleur d'arrière-plan d'une ligne ou d'une section d'un Form (ou d'une List ?)
                    
                    
                } // FIN FORM
                .padding()
                .offset(y : -50)
                
            } // FIN VSTACK PAGE
            .onAppear {
                UITableView.appearance().backgroundColor = .clear
            }
            .onDisappear {
                UITableView.appearance().backgroundColor = .systemGroupedBackground
            }
            .navigationBarItems(trailing: Button(action : {
                showAlert = true
                // Gérer le passage de données ici ?
            }) {
                Text("Enregistrer")
            })
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Préférences enregistrées"),
                    message: Text("")
                )
            }
            
        } // FIN ZSTACK
        
    } // FIN BODY
    
} // FIN STRUCT



struct PreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesView(easy: false, medium: false, hard: false, inDoor: false, outDoor: false, chosenPreferences: .constant(Preferences(irlMethod: false, onlineMethod: false, easyLevel: false, mediumLevel: false, difficultLevel: false) ))
    }
}


// Niveaux de difficulté :
struct DifficultyLevelView : View {
    
    @Binding var howDifficult : Bool
    var firstImageColor : Color
    var secondImageColor : Color
    var thirdImageColor : Color
    var text : String
    
    var body: some View {
        
        HStack (spacing : 20) {
            
            Toggle("", isOn: $howDifficult)
                .labelsHidden()
                .tint(Color("cosmic-cobalt"))
            
            VStack(alignment:.leading) {
                
                // HStack étoiles :
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(firstImageColor)
                    Image(systemName: "star.fill")
                        .foregroundColor(secondImageColor)
                    Image(systemName: "star.fill")
                        .foregroundColor(thirdImageColor)
                }
                
                Text(text)
                    .foregroundColor(Color("cosmic-cobalt"))
                    .font(.callout)
                    //.fixedSize()
                
            } // Fin VStack
        } // Fin HStack ligne
    }
}

// Modes d'action :
struct ActionTypeView : View {
    
    @Binding var toggleActionType : Bool
    var image : String
    var text : String
    
    var body: some View {
        HStack (spacing : 20) {
            Toggle("", isOn: $toggleActionType)
                .labelsHidden()
                .tint(Color("cosmic-cobalt"))
            Text(text)
            Image(systemName : image)
                .offset(x : -10)
        }
        .foregroundColor(Color("cosmic-cobalt"))
    }
    
}

// Tags thématiques :
struct ExtractedTag: View {
    
    @Binding var changeTagColor : Bool
    let tagLabel : String
    let tagFrameWidth : Double
    
    var body: some View {
        
        Button(
            action: {changeTagColor.toggle()},
            label: {
                
                ZStack {
                    Rectangle()
                        .frame(width: tagFrameWidth, height: 30.0)
                        .cornerRadius(20)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color(("yellow-pantone")), lineWidth: 3)
                            //.shadow(color: .black, radius: 3, x: 1, y: 5)
                        )
                        .foregroundColor(changeTagColor ? Color("yellow-pantone") : Color("cosmic-cobalt"))
                    Text(changeTagColor ? tagLabel : tagLabel)
                        .foregroundColor(changeTagColor ? Color("cosmic-cobalt") : Color("yellow-pantone"))
                    // VOIR SI ON MET DU BLANC À LA PLACE DU YELLOW PANTONE POUR LES TAGS
                } // Fin ZStack
                
            }) // Fin bouton tag
    }
}

