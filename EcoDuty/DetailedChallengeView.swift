//
//  DetailedChallengeView.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import SwiftUI
 
struct DetailedChallengeView: View {
    var body: some View {
        ZStack{
            Color("cosmic-cobalt")
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Spacer()
                HStack(spacing:70){
                    Text("Titre du défi")
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding([.top, .leading], 17.0)
                        .fixedSize()
                        
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
                .padding([.bottom], 30.0)
                
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
                }
                .padding()
                
                
               
                Text("@ En ligne")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
                
                Text("Titre du défi")
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                    
                Text("Lorean ipsun dolor sit aneat, conseacteatur adipisci ealit, sead eaiusnod teanpor incidunt ut laborea eat dolorea nagna aliqua. Ut eanin ad ninin veanian, quis nostrun eaxearcitationean ullan corporis suscipit laboriosan, nisi ut aliquid eax eaa connodi conseaquatur. Quis autea iurea reapreaheandearit in voluptatea vealit eassea cillun dolorea eau fugiat nulla pariatur.")
                
                    .padding()
                
                Button {
                    
                } label: {
                    Text("Click ici une fois le défi terminé")
                }
                
                .frame(width: 280, height: 50, alignment: .center)
                
                .foregroundColor(Color("cosmic-cobalt"))
                .background(.white)
                .cornerRadius(10)
                .padding()
                
                Button {
                    
                } label: {
                    Text("Abbandonner le défi")
                }
                .frame(width: 280, height: 50, alignment: .center)
                .border(.white, width: 2)
                .background(Color("cosmic-cobalt"))
                .cornerRadius(10)
                .padding(.leading)
                
                
            }
            
            .foregroundColor(.white)
            .frame(width: 300, alignment: .center)
            
            }
          
        
        }
       
    }
 
 
struct DetailedChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedChallengeView()
    }
}
