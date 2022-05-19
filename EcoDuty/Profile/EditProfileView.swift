//
//  EditProfileView.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

// RESTE À FAIRE :
//      Action bouton (sauvegarde de toutes les données saisies)
//      Gestion des valeurs (données utilisateur.rice & passage de données vers le profil notamment)
//      Enlever la NavigationView une fois le NavigationLink configuré
//      Voir si le bouton pour cacher le clavier est nécessaire ou non
//      Nettoyer le code des commentaires inutiles à la fin


import SwiftUI

struct EditProfileView: View {
    
    init() {
        UITableView.appearance().backgroundColor = UIColor.clear // Permet que la couleur indiquée dans la ZStack plus bas soit prise en compte (pour le fond).
        
        UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor = UIColor(named: "cosmic-cobalt") ?? .purple // Pour changer la couleur du bouton de l'alerte
        
    }
    
    // On peut déclarer un State avec un.e utilisateur.rice fictif.ve ici (en appellant les données de la User_struct).
    
    @State var showProfileSavedAlert = false
    @State private var isShowingImagePicker = false
    
    @State var imageFromImagePicker = UIImage(named : "blank-profile-picture")! // Variable correspondant à l'image de l'avatar, qui est par défaut l'image de profil vierge appelée blank-profile-picture
    
    @State var userSex = "" // Il faudra introduire ici la variable du sexe définie initialement/précédemment par l'utilisateur.rice. Ne pas lui donner la valeur zéro sinon ça bloque le fonctionnement du Picker (avec le tag notamment).
    @State var userLocalization = "" // Il faudra introduire ici la variable de la localisation définie initialement/précédemment par l'utilisateur.rice.
    @State var userFormerIntroduction = "Écris ta bio ici ou une petite anecdote sur ton rapport à l'écologie, à la nature. Qu'est-ce qu'on devrait savoir sur toi ?"
    @State var userNewIntroduction = ""
    @State var numberCharactersInIntroduction = 0
    let maxCharactersInIntroduction = 200
    
    var userSexOptions = ["Non déclaré", "Non binaire", "Femme", "Homme"]
    var userLocalizationOptions = ["Auvergne-Rhône-Alpes", "Bourgogne-Franche-Comté", "Bretagne", "Centre-Val de Loire", "Corse", "Grand Est", "Guadeloupe", "Guyane", "Hauts-de-France", "Île-de-France", "Martinique", "Mayotte", "Normandie", "Nouvelle-Aquitaine", "Occitanie", "Pays de la Loire", "Provence-Alpes-Côte d'Azur"] // Voir s'il y a éventuellement une meilleure façon de gérer ces données.
    
    var userName = "Teczer"
    
    
    var body: some View {
        
        
        ZStack {
            
            Color("cosmic-cobalt") // N'a pas l'air de marcher sans le init plus haut
                .ignoresSafeArea()
            
            VStack {
                
                // CHAMP DE MODIFICATION DE L'AVATAR DE L'UTILISATEUR.RICE :
                
                HStack {
                    
                    Image(uiImage : imageFromImagePicker)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 130, height: 130, alignment: .center)
                        .clipShape(Circle())
                        .onTapGesture { isShowingImagePicker = true }
                    
                    VStack (alignment : .leading, spacing : 20) {
                        Text(userName)
                            .foregroundColor(Color("yellow-pantone"))
                            .font(.title)
                            .fontWeight(.bold)
                        Text("""
Clique sur ton image
de profil pour la modifier.
""")
                        .font(.caption)
                        
                    } // Fin VStack du texte à côté de l'avatar
                    .foregroundColor(.white)
                    .padding()
                    
                } // Fin HStack bloc "Avatar"
                .offset(y: 20)
                
                // FIN SECTION AVATAR
                
                Form {
                    
                    // CHAMPS DES INFORMATIONS PERSONNELLES DE L'UTILISATEUR.RICE :
                    Section (header : Text("Informations personnelles")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    ) {
                        
                        // Menu déroulant "Sexe" :
                        InfoPicker(infoPickerSelection: $userSex, infoPickerTitle: "Sexe", infoPickerOptions: userSexOptions)
                        
                        // Menu déroulant "Localisation" :
                        InfoPicker(infoPickerSelection: $userLocalization, infoPickerTitle: "Localisation", infoPickerOptions: userLocalizationOptions)
                    } // FIN SECTION INFORMATIONS PERSONNELLES
                    
                    // CHAMP DE MODIFICATION DE LA BIO DE L'UTILISATEUR.RICE :
                    Section (header : Text("À propos de moi")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    ) {
                        TextEditor(text : $userFormerIntroduction)
                            .submitLabel(.join)
                            .frame(height : 140)
                            .cornerRadius(10)
                            .foregroundColor(Color("cosmic-cobalt"))
                            .onChange(of: userFormerIntroduction, perform: { formerBio in
                                numberCharactersInIntroduction = formerBio.count
                                if numberCharactersInIntroduction <= maxCharactersInIntroduction {
                                    userNewIntroduction = formerBio
                                } else {
                                    self.userFormerIntroduction = userNewIntroduction
                                }
                            })
                            .overlay(
                                VStack (alignment : .trailing) {
                                    Spacer()
                                    HStack {
                                        Spacer()
                                        Text("\(numberCharactersInIntroduction)/\(maxCharactersInIntroduction)")
                                            .font(.caption2)
                                            .foregroundColor(Color("cosmic-cobalt"))
                                    }
                                }
                            )
                        // overlay & onChange pour intégrer la limite en termes de nombre de caractères directement par-dessus le TextEditor
                        
                        // Intégrer .onSubmit pour faire redescendre le clavier
                        
                    }
                    // FIN SECTION BIO
                    
                    Section {
                        HStack {
                            Spacer()
                            Button(action : { // Revoir l'action du bouton pour qu'il soit le bouton de sauvegarde de l'ensemble des modifications de la page.
                                userNewIntroduction = userFormerIntroduction // userNewIntroduction sera la valeur à "renvoyer" vers la page de profil.
                                showProfileSavedAlert.toggle() // Indispensable pour que l'alerte plus bas se déclenche
                            }, label : {
                                Text("Sauvegarder")
                                    .fontWeight(.bold)
                                    .frame(width : 180, height : 50)
                                    .foregroundColor(Color("cosmic-cobalt"))
                                    .background(Color("yellow-pantone"))
                                    .cornerRadius(10) // À confirmer
                            }) // Fin bouton de sauvegarde de la bio
                            .alert(isPresented : $showProfileSavedAlert, content : {
                                getAlert()
                            })
                            Spacer()
                        }
                    }
                    .listRowBackground(Color("cosmic-cobalt"))
                    
                } // FIN FORM
                .padding()

                
                //Spacer()
                
            } // Fin VStack
            
            // NAVBAR :
            .toolbar {
                
                // Petit titre de l'écran (plus simple pour changer sa couleur que le navigationTitle)
                ToolbarItemGroup(placement : .principal) {
                    Text("Modification du profil")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
                
                // Bouton pour cacher le clavier (en cas de bug avec le clavier qui ne redescend pas automatiquement) :
                ToolbarItemGroup(placement : .navigationBarTrailing) {
                    Button(action : {
                        hideKeyboard()
                    }, label : {
                        Label("Cacher le clavier", systemImage: "keyboard.chevron.compact.down")
                    }) // Fin bouton
                }
                
            } // FIN TOOLBAR/NAVBAR
            
        } // Fin ZStack
        .sheet(isPresented: $isShowingImagePicker, content: { ImagePicker(imageFromImagePicker : $imageFromImagePicker) // permet de lier la @State imageFromImagePicker sur cet écran & la @Binding imageFromImagePicker dans l'ImagePicker
        })
        
    } // FIN BODY
    
    // Fonction pour l'alerte utilisée plus haut :
    func getAlert() -> Alert {
        return Alert(title: Text("Modifications enregistrées"))
    }
    
}



struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}

// Extension pour créer une fonction permettant de cacher le clavier en cas de bug :
#if canImport(UIKit)
extension View {
    func hideKeyboard () {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

