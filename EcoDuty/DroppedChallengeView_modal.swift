import SwiftUI

struct DroppedChallengeView_modal: View {
    
    @Binding var closeDroppedChallengeView : Bool
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
            VStack (spacing: 15
            ){
                  Text("Bouuuuuuuh !")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("cosmic-cobalt"))
                        
                   Image ("MascotAngryFace")
                        .resizable()
                        .frame(width: 200.0, height:130.0)
                      
                    Text("Tu as abandonné ton défi en cours... La déception est grande !")
                             .foregroundColor(Color("cosmic-cobalt"))
                             .multilineTextAlignment(.center)
                             .frame(width: 270.0, height:50.0)
                    Text("Mais je sais que tu en es capable. Je vais donc te donner une nouvelle chance.")
                        .foregroundColor(Color("cosmic-cobalt"))
                        .multilineTextAlignment(.center)
                    .frame(width: 270.0, height:70)
                
                  Text("La planète Terre peut encore être sauvée si tout le monde se mobilise. On compte sur toi, [titre associé au niveau] ! ")
                //ci dessus entre crochets interpolation a coder pour appeler le titre en relation avec le niveau de l'utilisateur
                    .foregroundColor(Color("cosmic-cobalt"))
                    .multilineTextAlignment(.center)
                .frame(width: 250.0, height:95.0)
                Text("C'est parti pour un nouveau challenge ? ")
                  .foregroundColor(Color("cosmic-cobalt"))
                  .multilineTextAlignment(.center)
              .frame(width: 250.0, height:50.0)
                
                Text("OK")
                    .font(.headline)
                    .fontWeight(.bold)
                    .frame(width: 100.0, height:50.0)
                    .foregroundColor(.white)
                    .background(Color("cosmic-cobalt"))
                    .cornerRadius(10
                    ).onTapGesture {
                        closeDroppedChallengeView.toggle()
                    }
            }
                    
            }
                }
               }
            

            

  


    



struct DroppedChallengeView_modal_Previews: PreviewProvider {
    static var previews: some View {
        DroppedChallengeView_modal(closeDroppedChallengeView: .constant(false))
    }
}
