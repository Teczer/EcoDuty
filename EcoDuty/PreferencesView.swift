//
//  PreferencesView.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import SwiftUI

struct PreferencesView: View {
    
    @State  var easy: Bool
    @State  var medium: Bool
    @State  var hard: Bool
    @State  var inDoor: Bool
    @State  var outDoor: Bool
    @State var tagAnimals = false
    @State var tagWaste = false
    @State var tagFood = false
    @State var tagNature = false
    @State var tagManif = false
    @Binding var chosenPreferences: Preferences
    @State private var showAlert = false
    @State private var changeColorAnimals = false
    @State private var changeColorEngagement = false
    @State private var changeColorNature = false
    @State private var changeColorDéchets = false
    
    
    //@Binding var pref: Preference
    var body: some View {
        
        ZStack {
            
            Color("cosmic-cobalt")
                .ignoresSafeArea()
            Form{
                Section {
                    VStack{
                        Text("Personnalise tes défis!")
                            .font(.headline)
                            .padding()
                        Text("Quels types de défis as-tu envie de relever ?")
                            .font(.subheadline)
                            .fixedSize()
                            .foregroundColor(Color("medium-slate-blue"))
                            .padding(7)
                        Spacer()
                    }
                    
                    
                    VStack(alignment: .leading){
                        
                        Text("Difficulté")
                        
                        ExtractedViewDifficulty(howDifficult: $easy, image:"star.fill", text: "A good start!")
                        ExtractedViewSecondDifficulty(howDifficult: $medium, image:"star.fill", text: "Try harder!")
                        ExtractedViewThirdDifficulty(howDifficult: $hard, image:"star.fill", text: "No pain, no gain!")
                        
                    }
                    .accentColor(.indigo)
                    VStack(alignment:.leading){
                        Text("Type")
                        ExtractedViewDifficulty(howDifficult: $inDoor, image:"", text: "Depuis ton mobile 📞")
                        ExtractedViewDifficulty(howDifficult: $outDoor, image:"", text: "Sur le terrain 🏄🏻‍♂️")
                        
                    }
                    VStack {
                        VStack {
                        HStack {
                            Button(action: {
                                changeColorAnimals.toggle()
                                
                            }, label: {
                                VStack {
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 100.0, height: 30.0)
                                            .cornerRadius(20)
                                            .background(
                                                RoundedRectangle(cornerRadius: 20)
                                                    .stroke(Color(("cosmic-cobalt")), lineWidth: 4)
                                                    .shadow(color: .black, radius: 3, x: 1, y: 5)
                                            )
                                            .foregroundColor(changeColorAnimals ? Color("cosmic-cobalt") : .white)
                                        Text(changeColorAnimals ? "#animaux" : "#animaux")
                                            .fontWeight(.bold)
                                            .foregroundColor(changeColorAnimals ? .white : Color("cosmic-cobalt"))
                                        
                                    }
                                }
                                
                            })
                            Spacer()
                            Button(action: {
                                changeColorEngagement.toggle()
                                
                            }, label: {
                                VStack {
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 100.0, height: 30.0)
                                            .cornerRadius(20)
                                            .background(
                                                RoundedRectangle(cornerRadius: 20)
                                                    .stroke(Color(("cosmic-cobalt")), lineWidth: 4)
                                                    .shadow(color: .black, radius: 3, x: 1, y: 5)
                                            )
                                            .foregroundColor(changeColorEngagement ? Color("cosmic-cobalt") : .white)
                                        Text(changeColorEngagement ? "#food" : "#food")
                                            .fontWeight(.bold)
                                            .foregroundColor(changeColorEngagement ? .white : Color("cosmic-cobalt"))
                                        
                                    }
                                }
                                
                            })
                                                        
                            
                        }
                            HStack {
                            Button(action: {
                                changeColorDéchets.toggle()
                                
                            }, label: {
                                VStack {
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 100.0, height: 30.0)
                                            .cornerRadius(20)
                                            .background(
                                                RoundedRectangle(cornerRadius: 20)
                                                    .stroke(Color(("cosmic-cobalt")), lineWidth: 4)
                                                    .shadow(color: .black, radius: 3, x: 1, y: 5)
                                            )
                                            .foregroundColor(changeColorDéchets ? Color("cosmic-cobalt") : .white)
                                        Text(changeColorDéchets ? "#déchets" : "#déchets")
                                            .fontWeight(.bold)
                                            .foregroundColor(changeColorDéchets ? .white : Color("cosmic-cobalt"))
                                        
                                    }
                                }
                                
                            })
                                Spacer()
                                Button(action: {
                                    changeColorNature.toggle()
                                    
                                }, label: {
                                    VStack {
                                        ZStack {
                                            Rectangle()
                                                .frame(width: 100.0, height: 30.0)
                                                .cornerRadius(20)
                                                .background(
                                                    RoundedRectangle(cornerRadius: 20)
                                                        .stroke(Color(("cosmic-cobalt")), lineWidth: 4)
                                                        .shadow(color: .black, radius: 3, x: 1, y: 5)
                                                )
                                                .foregroundColor(changeColorNature ? Color("cosmic-cobalt") : .white)
                                            Text(changeColorNature ? "#nature" : "#nature")
                                                .fontWeight(.bold)
                                                .foregroundColor(changeColorNature ? .white : Color("cosmic-cobalt"))
                                            
                                        }
                                    }
                                    
                                })
                            }
                        }
                    }.buttonStyle(BorderedButtonStyle())
                }
            }
            .background(Color("cosmic-cobalt"))
            .onAppear { // ADD THESE
                UITableView.appearance().backgroundColor = .clear
            }
            .onDisappear {
                UITableView.appearance().backgroundColor = .systemGroupedBackground
            }
            
            
            
            
            
            
        }
        
        .navigationBarTitle("Préférences")
        .navigationBarItems(trailing: Button(action: {
            
            showAlert = true
            //pref = Preferences(irlMethod: false, onlineMethod: false, easyLevel: easy, mediumLevel: false, difficultLevel: false)
            print("SF Symbol button pressed...")
        }) {
            Text("Enregistrer")
        })
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Préférences enregistrées !"),
                message: Text("")
            )
        }
    }
}


struct PreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        PreferencesView(easy: false, medium: false, hard: false, inDoor: false, outDoor: false, chosenPreferences: .constant(Preferences(irlMethod: false, onlineMethod: false, easyLevel: false, mediumLevel: false, difficultLevel: false) ))
    }
}



struct ExtractedViewDifficulty: View {
    
    @Binding var howDifficult:Bool
    //    @Binding var inOn: Bool
    var image:String
    var text:String
    
    var body: some View {
        
        HStack(spacing:30){
            
            Toggle("", isOn: $howDifficult)
                .labelsHidden()
                .tint(Color("cosmic-cobalt"))
            
            VStack(alignment:.leading){
                HStack(alignment: .center, spacing: 10){
                    
                    Image(systemName: image)
                        .foregroundColor(Color("cosmic-cobalt"))
                    Image(systemName: image)
                    Image(systemName: image)
                }
                
                Text(text)
                    .fixedSize()
                
                
                
            }
            
            
            
        }
        
        
    }
}

struct ExtractedViewSecondDifficulty: View {
    
    @Binding var howDifficult:Bool
    //    @Binding var inOn: Bool
    var image:String
    var text:String
    
    var body: some View {
        
        HStack(spacing:30){
            
            Toggle("", isOn: $howDifficult)
                .labelsHidden()
                .tint(Color("cosmic-cobalt"))
            
            VStack(alignment:.leading){
                HStack(alignment: .center, spacing: 10){
                    
                    Image(systemName: image)
                        .foregroundColor(Color("cosmic-cobalt"))
                    Image(systemName: image)
                        .foregroundColor(Color("cosmic-cobalt"))
                    Image(systemName: image)
                }
                
                Text(text)
                    .fixedSize()
                
                
                
            }
            
            
            
        }
        
        
    }
}

struct ExtractedViewThirdDifficulty: View {
    
    @Binding var howDifficult:Bool
    //    @Binding var inOn: Bool
    var image:String
    var text:String
    
    var body: some View {
        
        HStack(spacing:30){
            
            Toggle("", isOn: $howDifficult)
                .labelsHidden()
                .tint(Color("cosmic-cobalt"))
            
            VStack(alignment:.leading){
                HStack(alignment: .center, spacing: 10){
                    
                    Image(systemName: image)
                        .foregroundColor(Color("cosmic-cobalt"))
                    Image(systemName: image)
                        .foregroundColor(Color("cosmic-cobalt"))
                    Image(systemName: image)
                        .foregroundColor(Color("cosmic-cobalt"))
                }
                
                Text(text)
                    .fixedSize()
            }
        }
    }
}

//struct BoutonTag: View {
//    @State private var changeCouleur = false
//    var body: some View {
//        Button(action: {
//            changeCouleur.toggle()
//
//        }, label: {
//            VStack {
//                ZStack {
//                    Rectangle()
//                        .frame(width: 100.0, height: 30.0)
//                        .cornerRadius(20)
//                        .background(
//                            RoundedRectangle(cornerRadius: 20)
//                                .stroke(Color(("cosmic-cobalt")), lineWidth: 4)
//                                .shadow(color: .black, radius: 3, x: 1, y: 5)
//                        )
//                        .foregroundColor(changeCouleur ? Color("cosmic-cobalt") : .white)
//                    Text(changeCouleur ? "#animaux" : "#animaux")
//                        .fontWeight(.bold)
//                        .foregroundColor(changeCouleur ? .white : Color("cosmic-cobalt"))
//
//                }
//            } .padding(.top, 30)
//        })
//    }
//}
