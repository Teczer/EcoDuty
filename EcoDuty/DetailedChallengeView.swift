//
//  DetailedChallengeView.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import SwiftUI
 
struct DetailedChallengeView: View {
    
    @State var openDroppedChallengeViewModal = false
    
    @Binding var myChall2 : Challenge
    var body: some View {
        ZStack{
            Color("cosmic-cobalt")
                .ignoresSafeArea()
            VStack(alignment: .leading){
               
                    Text(myChall2.challengeTitle)
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding([.top, .leading], 17.0)
                        .fixedSize()
                        
                .padding([.bottom], 30.0)
                
                HStack(spacing: 20){
                    Text(myChall2.chalTagNature1)
                        .padding(10)
                        .foregroundColor(Color("cosmic-cobalt"))
                        .frame(height:30)
                        .background(Color(myChall2.chalTagNature1.isEmpty ? "Void" : "yellow-pantone"))
                        .cornerRadius(20)
 
                    Text(myChall2.chalTagNature2)
                        .padding(10)
                        .foregroundColor(Color("cosmic-cobalt"))
                        .frame(height:30)
                        .background(Color(myChall2.chalTagNature2.isEmpty ? "Void" : "yellow-pantone"))
                        .cornerRadius(20)
                    
                    Text(myChall2.chalTagNature3)
                        .padding(10)
                        .foregroundColor(Color("cosmic-cobalt"))
                        .frame(height:30)
                        .background(Color(myChall2.chalTagNature3.isEmpty ? "Void" : "yellow-pantone"))
                        .cornerRadius(20)
                    
                }
                .padding()
                
                
               
                HStack {
                    Group {
                        Image(systemName: "iphone")
                            .font(.system(size: 30))
                    }
                    Text(myChall2.challengeInOut)
                        .font(.title3)
                        .foregroundColor(.white)
                    Spacer()
                    Text(myChall2.challengeStatus
                    )
                    .foregroundColor(Color("yellow-pantone"))
                    .font(.title2)
                    .bold()
                        
                }
                .padding()
                
                Text(myChall2.challengeDescription)
                    
                    .padding()
                
                
                
                HStack(alignment: .center) {
                    Spacer()
                    NavigationLink(destination: ChallengeProofView()) {
                        
                        
                        Text("Valider le défi")
                            .font(.headline)
                        
                        
                    } .frame(width: 185, height: 50, alignment: .center)
                    
                                    .foregroundColor(Color("cosmic-cobalt"))
                                    .background(.white)
                                    .cornerRadius(10)
                                    .padding([.bottom, .top], 15)
                    Spacer()
                }
                                
              
                HStack(alignment: .center){
                    Spacer()
                    NavigationLink(destination: DroppedChallengeView_modal(closeDroppedChallengeView: $openDroppedChallengeViewModal)) {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 182, height: 47)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 3)
                            )
                            .foregroundColor(Color("cosmic-cobalt"))
                            .overlay(
                                Text("Abandonner le défi")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .onTapGesture {
                                        openDroppedChallengeViewModal.toggle()
                                    }
                            )
                        
                    } .frame(width: 190, height: 55, alignment: .center)
                        .background(Color("cosmic-cobalt"))
                        .cornerRadius(10)
                    Spacer()
                }

            }
            .padding([.horizontal])
            .foregroundColor(.white)
           
            
            }
        .sheet(isPresented: $openDroppedChallengeViewModal, content: {
            DroppedChallengeView_modal(closeDroppedChallengeView:  $openDroppedChallengeViewModal)
        })
        
        }
       
    }
 
 
struct DetailedChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedChallengeView(myChall2: .constant(challenges[0]))
    }
}
