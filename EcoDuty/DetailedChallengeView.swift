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
                        .font(.title)
                        .fontWeight(.bold)
                        .padding([.top, .leading], 17.0)
                        .fixedSize()
                            
                    
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
                
                
               
                HStack {
                    Group {
                        Image(systemName: "iphone")
                            .font(.system(size: 30))
                    }
                    Text("En ligne")
                        .font(.title3)
                        .foregroundColor(.white)
                }
                
                Text("Sous-titre")
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
                .cornerRadius(5)
                
                .padding(.bottom, 20)
                Button {
                    
                } label: {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 280.0, height: 50.0)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.white, lineWidth: 4)
                        )
                        .foregroundColor(Color("cosmic-cobalt"))
                        .overlay(
                            Text("Abandonner le défi")
                                .font(.title2)
                                .fontWeight(.bold)
                        )
                    
                } .frame(width: 285, height: 55, alignment: .center)
                    .background(Color("cosmic-cobalt"))
                    .cornerRadius(10)
                
                
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
