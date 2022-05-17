//
//  SuccessfulChallengeView_modal.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import SwiftUI

struct SuccessfulChallengeView_modal: View {
    
    @Binding var closeSuccessfulChallengeView : Bool
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color("cosmic-cobalt"))
                .ignoresSafeArea()
            Rectangle()
                .cornerRadius(20)
                .foregroundColor(Color("medium-slate-blue"))
                .frame(width: 308, height: 614)
            Rectangle()
                .cornerRadius(13)
                .foregroundColor(.white)
                .frame(width: 295, height: 600)
            VStack (spacing:13) {
                Text("Félicitations !")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("cosmic-cobalt"))
                
                Image ("MascotHappyFace") // Attention nom asset "MascotteHappyFace" pour André & "MascotHappyFace" pour Justine
                    .resizable()
                    .frame(width: 200.0, height:130.0)
                
                Text("Tu as relevé le défi 💪 ! Je savais que tu en étais capable ! !")
                    .foregroundColor(Color("cosmic-cobalt"))
                    .multilineTextAlignment(.center)
                    .padding(.top)
                    .frame(width: 270.0, height:60.0)
                Text("Tu remportes [nombre de points du défi] points.")
                    .foregroundColor(Color("cosmic-cobalt"))
                    .multilineTextAlignment(.center)
                    .frame(width: 270.0, height:50)
                //interpolation necessaire pour appeller le nombre de points du defi
                
                Text("Ton score s'élève maintenant à [nombre de points total] points :Bravo [titre associé au niveau] (niveau Y) !! La révolution verte est en marche ! ")
                //ci dessus entre crochets interpolation pour appeler le score mis a jour et le titre associé au niveau
                    .foregroundColor(Color("cosmic-cobalt"))
                    .multilineTextAlignment(.center)
                    .frame(width: 250.0, height: 117.0)
                Text("Prêt.e pour un nouveau challenge ? ")
                    .foregroundColor(Color("cosmic-cobalt"))
                    .multilineTextAlignment(.center)
                    .frame(width: 250.0, height:45.0)
                
                Button(action : { // Revoir l'action du bouton pour qu'il soit le bouton de sauvegarde de l'ensemble des modifications de la page.
                    // Mettre ici l'action du bouton : déclenchement de la modale
                    closeSuccessfulChallengeView.toggle()
                    
                }, label : {
                    Text("OK")
                        .fontWeight(.bold)
                        .frame(width : 100, height : 50)
                        .foregroundColor(.white)
                        .background(Color("cosmic-cobalt"))
                        .cornerRadius(10) // À confirmer
                        .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10) // Voir si on conserve l'ombre ou pas (et être homogène sur les boutons de l'app autant que possible)
                }) // Fin bouton "Valider le défi"
                
                
            }
            
            
        }
        
    }
}







struct SuccessfulChallengeView_modal_Previews: PreviewProvider {
    static var previews: some View {

        SuccessfulChallengeView_modal(closeSuccessfulChallengeView : .constant(true))
    }
}
