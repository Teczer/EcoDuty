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
            BadgessView()
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

struct LevelView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .cornerRadius(20)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color("medium-slate-blue"), lineWidth: 14)
                )
                .frame(width: 300, height: 200)
            VStack {
                Text("Ma progression")
                    .foregroundColor(Color("cosmic-cobalt"))
                    .font(.title2)
                    .bold()
                Spacer()
                    .frame(height: 150)
            }
            
            VStack {
                Spacer()
                    .frame(height: 40)
                HStack {
                    ZStack {
                        Rectangle()
                            .cornerRadius(15)
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color("medium-slate-blue"), lineWidth: 3)
                            )
                            .frame(width: 70, height: 70)
                            .foregroundColor(Color("yellow-pantone"))
                        Text("Niveau 3")
                            .fontWeight(.bold)
                            .foregroundColor(Color("cosmic-cobalt"))
                    }
                    Spacer()
                    .frame(width: 210)                            }
            }
            VStack {
                Spacer()
                    .frame(height: 40)
                HStack {
                    Spacer()
                        .frame(width: 210)
                    ZStack {
                        Rectangle()
                            .cornerRadius(15)
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color("medium-slate-blue"), lineWidth: 3)
                            )
                            .frame(width: 70, height: 70)
                            .foregroundColor(Color("maximum-blue-purple"))
                        Text("Niveau 4")
                            .fontWeight(.bold)
                            .foregroundColor(Color("cosmic-cobalt"))
                    }
                }
            }
            
        }
        .padding(40)
    }
}

struct ProgressionView: View {
    @State private var nextLevelAmount = 0.0
    var body: some View {
        ZStack{
            Rectangle()
                .background(
                    Rectangle()
                        .stroke(Color(("medium-slate-blue")), lineWidth: 10)
                )
                .frame(width:300, height: 150)
                .foregroundColor(.white)
                .overlay(
                    Text("Ma progression")
                        .foregroundColor(Color("cosmic-cobalt"))
                        .font(.title2)
                        .bold()
                        .padding(.bottom, 100)
                )
                .overlay(
                    RectangleNiveau(userProgressionActualLevel: "3")
                )
                .overlay(
                    RectangleLevel2(userProgressionNextLevel: "4")
                )
                .overlay(
                    VStack {
                        Spacer()
                            .frame(height: 40)
                        ProgressView("Niveau Suivant", value: nextLevelAmount, total: 100)
                            .frame(width: 130.0, height: 10.0)
                    }
                )
        }
    }
}

struct RectangleNiveau: View {
    var userProgressionActualLevel: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .overlay(
                    Text("Niveau \(userProgressionActualLevel)")
                        .fontWeight(.bold)
                        .foregroundColor(Color("cosmic-cobalt"))
                        .multilineTextAlignment(.center)
                )
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(("medium-slate-blue")), lineWidth: 4)
                )
                .frame(width: 60, height: 60)
                .foregroundColor(Color("yellow-pantone"))
                .padding(.trailing, 210)
                .padding(.top, 60)
        }
    }
}

struct RectangleLevel2: View {
    var userProgressionNextLevel: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .overlay(
                    Text("Niveau \(userProgressionNextLevel)")
                        .fontWeight(.bold)
                        .foregroundColor(Color("cosmic-cobalt"))
                        .multilineTextAlignment(.center)
                )
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(("medium-slate-blue")), lineWidth: 4)
                )
                .frame(width: 60, height: 60)
                .foregroundColor(Color("yellow-pantone"))
                .padding(.leading, 210)
                .padding(.top, 60)
        }
    }
}

struct BadgessView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .background(
                    Rectangle()
                        .stroke(Color(("medium-slate-blue")), lineWidth: 10)
                )
                .foregroundColor(.white)
                .frame(width:300, height: 700)
                .overlay(
                    Text("Mes Badges")
                        .foregroundColor(Color("cosmic-cobalt"))
                        .font(.title2)
                        .bold()
                        .padding(.bottom, 630)
                )
                .overlay(
                    GroupBadgessCircle()
                )
        }
    }
}

struct BadgessCircle: View {
    var badgeName: String
    var body: some View {
        
        VStack {
            Circle()
                .background(
                    Circle()
                        .stroke(Color(("cosmic-cobalt")), lineWidth: 2)
                )
                .foregroundColor(Color.white)
                .frame(width: 63.07, height: 63.33)
                .shadow(radius: 3)
                .overlay(
                    Image(systemName: "shield.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color("yellow-pantone"))
            )
            Rectangle()
                .cornerRadius(15)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color("medium-slate-blue"), lineWidth: 3)
                )
                .foregroundColor(.white)
                .frame(width: 100, height: 25)
                .overlay(
                Text("\(badgeName)")
                )
        }
    }
}

struct GroupBadgessCircle: View {
    var body: some View {
        VStack {
            
            HStack {
                BadgessCircle(badgeName: "Eco Friend")
                BadgessCircle(badgeName: "Eco Angel")
            }
            HStack {
                BadgessCircle(badgeName: "Eco Machin")
                BadgessCircle(badgeName: "Eco Pro")
            }
            HStack {
                BadgessCircle(badgeName: "Eco Master")
                BadgessCircle(badgeName: "Eco Chall")
            }
            HStack {
                BadgessCircle(badgeName: "Eco Onix")
                BadgessCircle(badgeName: "Eco Bouftou")
            }
            HStack {
                BadgessCircle(badgeName: "Eco Kwak")
                BadgessCircle(badgeName: "Eco Ultime")
            }
        }
    }
}

struct HeadLineProfile: View {
    var userName: String
    var userGenreAndAge: String
    var userLocalization: String
    var userLevelAndTitle: String
    var body: some View {
        HStack(spacing:10){
            
            
            HStack {
                Spacer()
                    .frame(width: 30)
                Image("ArianaGrande")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .background(
                        Circle()
                            .stroke(Color(("medium-slate-blue")), lineWidth: 14)                                )
            }
            VStack(alignment:.leading){
                Text("\(userName)")
                    .font(.title)
                    .bold()
                Text("\(userGenreAndAge)")
                Text("\(userLocalization)")
                Text("\(userLevelAndTitle)")
                
                    .font(.title3)
                    .bold()
                
            }
            .foregroundColor(.white)
            .padding()
            
        }
    }
}

struct Description: View {
    var body: some View {
        Group {
            Text("A propos de moi")
                .font(.title3)
                .foregroundColor(Color.white)
                .bold()
                .padding()
            Text("Bonjour lala dolor sit aneat, conseacteatur adipisci ealit, sead eaiusnod teanpor incidunt ut laborea eat dolorea nagna aliqua. Ut eanin ad ninin veanian, quis nostrun eaxearcitationean ullan corporis suscipit laboriosan, nisi ut aliquid eax eaa connodi conseaquatur. Quis autea iurea reapreaheandearit in voluptatea vealit eassea cillun dolorea eau fugiat nulla pariatur.")
                .foregroundColor(Color.white)
                .padding()
                .frame(width:300)
        }
    }
}

// Subviews EditProfileView :

// Pour les menus déroulants de la section "Informations personnelles" :

struct InfoPicker : View {
    
    @Binding var infoPickerSelection : String
    let infoPickerTitle : String
    let infoPickerOptions : [String]
    
    
    var body: some View {
        HStack {
            
            Text(infoPickerTitle)
                .fontWeight(.bold)
                .foregroundColor(Color ("cosmic-cobalt"))
            
            Picker("", selection: $infoPickerSelection) {
                ForEach(infoPickerOptions, id: \.self) { infoPickerOption in
                    Text(infoPickerOption).tag(infoPickerOption)
                    // Le .tag() permet de rendre une valeur sélectionnable dans le Picker et de la conserver.
                    //Text($0) // Remplace syntaxe type "valeur in valeur"
                }
            }
            // Fin Picker
            .foregroundColor(Color("cosmic-cobalt")) // Permet de changer les couleurs de l'ensemble des éléments textuels du Picker
            
        } // Fin HStack ligne "Sexe"
        .pickerStyle(.automatic)
    }
}

// Pour la barre de progression permettant de limiter le nombre de caractères dans la bio de l'utilisateur.rice :

struct ProgressBarCharactersLimit: View {
    
    @Binding var formerText : String
    @Binding var newText : String
    @Binding var numberCharacters : Int
    let charactersLimit : Int
    
    var body: some View {
        
        ProgressView("Nombre de caractères : \(numberCharacters)/\(charactersLimit)", value : Double(numberCharacters), total : Double(charactersLimit))
            .frame(width: 230)
            .offset(y: -35)
            .foregroundColor(.white)
            .onChange(of: formerText, perform: { formerText in
                numberCharacters = formerText.count
                if numberCharacters <= charactersLimit {
                    newText = formerText
                } else {
                    self.formerText = newText
                }
            })
    }
}
