//
//  ProfileVieww.swift
//  EcoDuty
//
//  Created by Apprenant 98 on 16/05/2022.
//

import SwiftUI

struct ProfileView: View {
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().tintColor = UIColor.white
    }
    
    var body: some View {
        NavigationView{
            ZStack {
                Color("cosmic-cobalt")
                    .ignoresSafeArea()
                ScrollView{
                    
                    
                    VStack{
                        VStack{
                            Text("____________________________________")
                                .foregroundColor(Color("maximum-blue-purple"))
                            HStack(spacing:10){
                                
                                
                                HeadLineProfile(userName: "Teczer", userGenreAndAge: "Homme, 18 ans", userLocalization: "Aubervilliers", userLevelAndTitle: "Niveau 4: Eco Defender")
                                
                            }
                            VStack{
                                Text("____________________________________")
                                    .foregroundColor(Color("maximum-blue-purple"))
                                Description()
                                Spacer()
                                ProgressionView()
                                BadgessView()
                            }
                            
                        }
                    }
                    .navigationBarTitle("Profil", displayMode: .inline
                    )
                    .navigationBarItems(trailing:
                                            NavigationLink(destination: EditProfileView(), label: ({
                        Text("Editer")
                    })
                                                          )
                    )
                }
                .padding(.vertical)
            }
        }
    }
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
        }
    }
}



