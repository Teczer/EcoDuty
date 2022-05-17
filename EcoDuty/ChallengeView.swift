//
//  ChallengeView.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import SwiftUI
 
struct ChallengeView: View {
    //array de Challenge -> boucle + filtre -> randomElement()
    //array.filter -> $0.preferences // $1.preferences
    @State private var challengePreference:Preferences = Preferences(irlMethod: false, onlineMethod: false, easyLevel: false, mediumLevel: false, difficultLevel: false)
    
    @State private var showAlert = false
    @State private var showDetails = false
    @State private var pref = Preferences(irlMethod: false, onlineMethod: false, easyLevel: false, mediumLevel: false, difficultLevel: false)
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                
                Text(pref.difficultLevel.description)
                
                Text("Est-ce que ce défi \nte convient?")
                    .font(.headline)
                    .padding([.top,.leading], 30.0)
                    .foregroundColor(Color("cosmic-cobalt"))
        
                Text("Dépêche-toi! \nIl est urgent d'agir!")
                    
                    .font(.subheadline)
                    .fixedSize()
                    .foregroundColor(Color("medium-slate-blue"))
                    .padding([.top,.leading], 30)
          
            ZStack{
                
                Rectangle()
                    .foregroundColor(Color("cosmic-cobalt"))
                    .cornerRadius(20)
                    .ignoresSafeArea()
                VStack{
                    HStack(spacing: 120){
                        Text("En ligne")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        HStack{
                            Image(systemName: "star.fill")
                                .foregroundColor(.white)
                            Image(systemName: "star.fill")
                                .foregroundColor(.white)
                                .opacity(0.5)
                            Image(systemName: "star.fill")
                                .foregroundColor(Color(.white)
                                )
                            .opacity(0.5)}
                        }
                      
                    
                        Text("Titre du défi")
                            .foregroundColor(.white)
                            .font(.title2)
                            .fontWeight(.bold)
                        .padding()
                    
                        
                    Text("Lorean ipsun dolor sit aneat, conseacteatur adipisci ealit, sead eaiusnod teanpor incidunt ut laborea eat dolorea nagna aliqua. Ut eanin ad ninin veanian, quis nostrun eaxearcitationean ullan corporis suscipit laboriosan, nisi ut aliquid eax eaa connodi conseaquatur. Quis autea iurea reapreaheandearit in voluptatea vealit eassea cillun dolorea eau fugiat nulla pariatur.")
                    
                        .frame(width: 280, alignment:.center)
                    
                    HStack(spacing: 20){
                        Text("#animaux")
                            .padding(10)
                            .foregroundColor(Color("cosmic-cobalt"))
                            .frame(height:30)
                            .background(Color("yellow-pantone"))
                            .cornerRadius(20)
 
                        Text("#food")
                            .padding(10)
                            .foregroundColor(Color("cosmic-cobalt"))
                            .frame(height:30)
                            .background(Color("yellow-pantone"))
                            .cornerRadius(20)
    
                       
                        
                        Spacer()
                        
                    }
                    .padding(30)
                    
                    Button {
                        showAlert = true
                    } label: {
                        Text("Je choisis ce défi !")
                    }
                    
                    .frame(width: 280, height: 50, alignment: .center)
                    .foregroundColor(Color("cosmic-cobalt"))
                    .background(.white)
                    .cornerRadius(10)
                    .padding()
                   
                    Button {
                        
                    } label: {
                        Text("Un autre défi !")
                    }
                    .frame(width: 280, height: 50, alignment: .center)
                    .border(.white, width: 2)
                    .background(Color("cosmic-cobalt"))
                    .cornerRadius(10)
                    
                }
                .foregroundColor(.white)
                
                .padding()
                
            }
               
                NavigationLink(destination: DetailedChallengeView() , isActive: $showDetails) { EmptyView() }
            }
            
            .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("C'est parti!"),
                        message: Text("C'est le moment de découvrir plus en détails le challenge que tu as choisi!"),
                        
                       
                        primaryButton: .default(
                            
                            Text("OK"),
                            action: {
                               
                                showDetails = true
                            }),
                                secondaryButton: .destructive(
                            Text("Annuler"),
                            action: {})
                    )
                }
            
            
                .navigationBarTitle("Ton défi", displayMode: .inline)
            
                .navigationBarItems(trailing:
                                        NavigationLink(destination: PreferencesView(easy: false, medium: false, hard: false, inDoor: false, outDoor: false, chosenPreferences: $pref), label: ({
                    Text("Préferénces")
                })
                    )
            
        )
        }
        }
    }
 
 
struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeView()
    }
}
 
//struct ContentView: View {
//    @State private var isShowingDetailView = false
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                NavigationLink(destination: Text("Second View"), isActive: $isShowingDetailView) { EmptyView() }
//
//                Button("Tap to show detail") {
//                    isShowingDetailView = true
//                }
//            }
//            .navigationTitle("Navigation")
//        }
//    }
//}

