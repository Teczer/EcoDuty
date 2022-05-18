import SwiftUI

struct ChallengeView: View {
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().tintColor = UIColor.white
    }
    //array de Challenge -> boucle + filtre -> randomElement()
    //array.filter -> $0.preferences // $1.preferences
    @State private var challengePreference:Preferences = Preferences(irlMethod: false, onlineMethod: false, easyLevel: false, mediumLevel: false, difficultLevel: false)
    
    
    
    
    //@State private var chosenChalIndoor: ()? = randomChallenge?.prefer.onlineMethod.toggle()
    @State private var randomChal =
    challenges[0]
    
    @State private var showAlert = false
    @State private var showDetails = false
    @State private var pref = Preferences(irlMethod: false, onlineMethod: false, easyLevel: false, mediumLevel: false, difficultLevel: false)
    @State private var chosenChalTitle = challenges[0].challengeTitle
    @State private var chosenChalText = challenges[0].challengeDescription
    @State private var challengeLevel = challenges[0].challengeStatus
    @State private var challengeInOut = challenges[0].challengeInOut
    
    var body: some View {
        
        NavigationView{
            
            VStack(alignment: .leading) {
                
                //                Text(pref.difficultLevel.description)
                
                Text("Découvre ton défi personnalisé !")
                
                    .font(.title)
                    .fontWeight(.bold)
                    .padding([.top,.leading], 30.0)
                    .foregroundColor(Color("cosmic-cobalt"))
                
                Text("Dépêche-toi ! \nIl est urgent d'agir !")
                
                    .font(.title3)
                    .fixedSize()
                    .foregroundColor(Color("cosmic-cobalt"))
                    .padding(30)
                
                Spacer()
                
                ZStack {
                    
                    Rectangle()
                        .foregroundColor(Color("cosmic-cobalt"))
                        .cornerRadius(20)
                        .ignoresSafeArea()
                    VStack(alignment:.leading){
                        HStack(){
                            Text(randomChal.challengeInOut)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            Spacer()
                            Text(randomChal.challengeStatus
                            )
                            .foregroundColor(Color("yellow-pantone"))
                            .font(.title2)
                            .bold()
                            
                        }
                        Spacer()
                        
                        Text(randomChal.challengeTitle)
                            .foregroundColor(.white)
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        
                        Text(randomChal.challengeDescription)
                            .frame(height:80)
                        
                        
                        Spacer()
                        
                        
                        // if string id not empty {backghround color yellow}
                        HStack(spacing: 20) {
                            Text(randomChal.chalTagNature1)
                                .padding(10)
                                .foregroundColor(Color("cosmic-cobalt"))
                                .frame(height:30)
                                .background(Color(randomChal.chalTagNature1.isEmpty ? "" : "yellow-pantone"))
                                .cornerRadius(20)
                            
                            Text(randomChal.chalTagNature2)
                                .padding(10)
                                .foregroundColor(Color("cosmic-cobalt"))
                                .frame(height:30)
                                .background(Color(randomChal.chalTagNature2.isEmpty ? "" : "yellow-pantone"))
                                .cornerRadius(20)
                            
                            Text(randomChal.chalTagNature3)
                                .padding(10)
                                .foregroundColor(Color("cosmic-cobalt"))
                                .frame(height:30)
                            
                            
                                .cornerRadius(20)
                            //} else { //pas de background}
                            
                            Spacer()
                            
                        }
                        Spacer()
                        
                        HStack (spacing : 25) {
                            Button {
                                showAlert = true
                            } label: {
                                Text("Je me lance !")
                                    .font(.headline)
                                    .fontWeight(.bold)
                            }
                            
                            .frame(width: 150, height: 50, alignment: .center)
                            .foregroundColor(Color("cosmic-cobalt"))
                            .background(.white)
                            .cornerRadius(10)
                            .padding([.bottom])
                            
                            Button {
                                randomise()
                            } label: {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 150, height: 50)
                                
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.white, lineWidth: 3)
                                    )
                                    .foregroundColor(Color("cosmic-cobalt"))
                                    .overlay(
                                        Text("Un autre défi ?")
                                            .font(.headline)
                                            .fontWeight(.bold)
                                    )
                            }
                            .frame(width: 155, height: 55, alignment: .center)
                            .background(Color("cosmic-cobalt"))
                            .cornerRadius(10)
                            .padding([.bottom])
                            
                        }
                        Spacer()
                    }
                    .foregroundColor(.white)
                    .padding(30)
                    
                } // Fin ZStack
                
                NavigationLink(destination: DetailedChallengeView(myChall2: $randomChal) , isActive: $showDetails) { EmptyView() }
            }
            
            //alert
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
            
            
            .toolbar {
                
                // Petit titre de l'écran (plus simple pour changer sa couleur que le navigationTitle)
                ToolbarItemGroup(placement : .principal) {
                    Text("Ton défi")
                        .foregroundColor(Color("cosmic-cobalt"))
                        .fontWeight(.bold)
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    NavigationLink(destination: PreferencesView(easy: false, medium: false, hard: false, inDoor: false, outDoor: false, tagAnimals: false, tagWaste: false, tagFood: false, tagNature: false, tagManif: false, chosenPreferences: $pref), label: ({
                        
                        Text("Préférences")
                            .foregroundColor(Color("cosmic-cobalt"))
                        
                    })
                                   
                                   
                    )}
                
            }
        }
    }
    
    
    
    func randomise(){
        if let chosenRandomly = challenges.randomElement() {
            randomChal = chosenRandomly
        }
        
        
        
    }
    
    
    
    
    struct ChallengeView_Previews: PreviewProvider {
        static var previews: some View {
            ChallengeView()
        }
    }
    
}
