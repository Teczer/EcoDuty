//
//  LocalRankingView_option.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import SwiftUI

struct LocalRankingView_option: View {
    var body: some View {
        ZStack  {
                Color("cosmic-cobalt")
                    .ignoresSafeArea()
            VStack {
                VStack {
                    UserRankNumberOne(userName: "Teczer", userPoints: "1 917 281", userPosition: "1", userImage: "ArianaGrande")
                        .padding(5)
                    UserRankNumberTwo(userName: "Justine", userPoints: "1 789 281", userPosition: "2", userImage: "ariana-grande-white")
                        .padding(5)
                    UserRankNumberThree(userName: "André", userPoints: "1 291 021", userPosition: "3", userImage: "arbre-8k")
                        .padding(5)
                    UserRankGeneral(userName: "Teresa", userPoints: "920 192", userPosition: "4", userImage: "fleur-8k")
                        .padding(5)
                    UserRankGeneral(userName: "Sacha", userPoints: "889 102", userPosition: "5", userImage: "future")
                        .padding(5)
                    UserRankGeneral(userName: "Jonathan", userPoints: "820 812", userPosition: "6", userImage: "juice-wrld")
                        .padding(5)
                    UserRankGeneral(userName: "Sarah", userPoints: "798 201", userPosition: "7", userImage: "kanye-west")
                        .padding(5)
                    UserRankGeneral(userName: "Solange", userPoints: "721 481", userPosition: "8", userImage: "lion-8k")
                        .padding(5)
//                    UserRankGeneral(userName: "Benash", userPoints: "698 211", userPosition: "9", userImage: "rose-8k")
//                        .padding(5)
//                    UserRankGeneral(userName: "Josman", userPoints: "672 444", userPosition: "10", userImage: "moto-8k")
                    
                }
                Spacer()
                    .frame(height: 10)
                MyActualRank(userName: "Teczer", userPoints: "1 917 281", userPosition: "1", userImage: "ArianaGrande")
            }
        }
    }
}

struct LocalRankingView_option_Previews: PreviewProvider {
    static var previews: some View {
        LocalRankingView_option()
    }
}

struct UserRankNumberOne: View {
    var userName: String
    var userPoints: String
    var userPosition: String
    var userImage: String
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(20)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 4)
                    
                )
                .foregroundColor(Color("yellow-pantone"))
                .frame(width: 351, height: 41)
                .shadow(radius: 10)
            
            ZStack {
                
                HStack {
                    Spacer()
                        .frame(width: 200)
                    Text("\(userPoints)")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    
                }
                
                
                
            }
            
            
            ZStack {
                HStack {
                    Rectangle()
                        .cornerRadius(20)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 4)
                            
                        )
                        .foregroundColor(Color("medium-slate-blue"))
                        .frame(width: 186, height: 41)
                        .shadow(radius: 10)
                    Spacer()
                        .frame(width: 167.5)
                }
                HStack {
                    Text("\(userName)")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .shadow(radius: 20)
                    Spacer()
                        .frame(width: 110)
                }
            }
            
            HStack {
                ZStack {
                    Rectangle()
                        .cornerRadius(20)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 4)
                            
                        )
                        .foregroundColor(Color("yellow-pantone"))
                        .frame(width: 78, height: 41)
                        .shadow(radius: 10)
                    HStack {
                        Text("\(userPosition)")
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .font(.title2)
                        Spacer()
                            .frame(width: 35)
                    }
                    HStack {
                        Spacer()
                            .frame(width: 35)
                        ZStack {
                            CircleProfile(profileImage: "\(userImage)")
                        }
                
                    }
              
                    
                }
                Spacer()
                    .frame(width: 273)
            }
        }
    }
}

struct UserRankNumberTwo: View {
    var userName: String
    var userPoints: String
    var userPosition: String
    var userImage: String
    var body: some View {
        ZStack  {
            Rectangle()
                .cornerRadius(20)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 4)
                    
                )
                .foregroundColor(Color("rank-silver"))
                .frame(width: 315, height: 41)
                .shadow(radius: 10)
            
            ZStack {
                
                HStack {
                    Spacer()
                        .frame(width: 170)
                    Text("\(userPoints)")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    
                }
                
                
                
            }
            
            
            ZStack {
                HStack {
                    Rectangle()
                        .cornerRadius(20)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 4)
                            
                        )
                        .foregroundColor(Color("medium-slate-blue"))
                        .frame(width: 186, height: 41)
                        .shadow(radius: 10)
                    Spacer()
                        .frame(width: 167.5)
                }
                HStack {
                    Text("\(userName)")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .shadow(radius: 20)
                    Spacer()
                        .frame(width: 110)
                }
            }
            
            HStack {
                ZStack {
                    Rectangle()
                        .cornerRadius(20)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 4)
                            
                        )
                        .foregroundColor(Color("rank-silver"))
                        .frame(width: 78, height: 41)
                        .shadow(radius: 10)
                    HStack {
                        Text("\(userPosition)")
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .font(.title2)
                        Spacer()
                            .frame(width: 35)
                    }
                    HStack {
                        Spacer()
                            .frame(width: 35)
                        CircleProfile(profileImage: "\(userImage)")
                        
                    }
                    
                    
                }
                Spacer()
                    .frame(width: 273)
            }
        }
    }
}



struct UserRankNumberThree: View {
    var userName: String
    var userPoints: String
    var userPosition: String
    var userImage: String
    var body: some View {
        ZStack  {
            Rectangle()
                .cornerRadius(20)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 4)
                    
                )
                .foregroundColor(Color("rank-bronze"))
                .frame(width: 260, height: 41)
                .shadow(radius: 10)
            
            ZStack {
                
                HStack {
                    Spacer()
                        .frame(width: 130)
                    Text("\(userPoints)")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    
                }
                
                
                
            }
            
            
            ZStack {
                HStack {
                    Rectangle()
                        .cornerRadius(20)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 4)
                            
                        )
                        .foregroundColor(Color("medium-slate-blue"))
                        .frame(width: 186, height: 41)
                        .shadow(radius: 10)
                    Spacer()
                        .frame(width: 167.5)
                }
                HStack {
                    Text("\(userName)")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .shadow(radius: 20)
                    Spacer()
                        .frame(width: 110)
                }
            }
            
            HStack {
                ZStack {
                    Rectangle()
                        .cornerRadius(20)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 4)
                            
                        )
                        .foregroundColor(Color("rank-bronze"))
                        .frame(width: 78, height: 41)
                        .shadow(radius: 10)
                    HStack {
                        Text("\(userPosition)")
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .font(.title2)
                        Spacer()
                            .frame(width: 35)
                    }
                    HStack {
                        Spacer()
                            .frame(width: 35)
                        CircleProfile(profileImage: "\(userImage)")
                        
                    }
                    
                    
                }
                Spacer()
                    .frame(width: 273)
            }
        }
    }
}

struct UserRankGeneral: View {
    var userName: String
    var userPoints: String
    var userPosition: String
    var userImage: String
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(20)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 4)
                    
                )
                .foregroundColor(Color.white)
                .frame(width: 210, height: 41)
            
            ZStack {
                
                HStack {
                    Spacer()
                        .frame(width: 110)
                    Text("\(userPoints)")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    
                }
                
                
                
            }
            
            
            ZStack {
                HStack {
                    Rectangle()
                        .cornerRadius(20)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 4)
                            
                        )
                        .foregroundColor(Color.white)
                        .frame(width: 186, height: 41)
                    Spacer()
                        .frame(width: 167.5)
                }
                HStack {
                    Text("\(userName)")
                        .foregroundColor(Color("medium-slate-blue"))
                        .fontWeight(.bold)
                    Spacer()
                        .frame(width: 110)
                }
            }
            
            HStack {
                ZStack {
                    Rectangle()
                        .cornerRadius(20)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 4)
                            
                        )
                        .foregroundColor(Color("medium-slate-blue"))
                        .frame(width: 78, height: 41)
                    HStack {
                        Text("\(userPosition)")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .font(.title2)
                        Spacer()
                            .frame(width: 35)
                    }
                    HStack {
                        Spacer()
                            .frame(width: 35)
                        ZStack {
                            CircleProfile(profileImage: "\(userImage)")
                        }
                        
                    }
                    
                    
                }
                Spacer()
                    .frame(width: 273)
            }
        }
    }
}

struct MyActualRank: View {
    var userName: String
    var userPoints: String
    var userPosition: String
    var userImage: String
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(20)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 4)
                    
                )
                .foregroundColor(Color("corn-yellow"))
                .frame(width: 350, height: 41)
                .shadow(radius: 10)
            ZStack {
                
                HStack {
                    Spacer()
                        .frame(width: 180)
                    Text("\(userPoints)")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    
                }
                
                
                
            }
            
            
            ZStack {
                HStack {
                    Rectangle()
                        .cornerRadius(20)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 4)
                            
                        )
                        .foregroundColor(Color("maximum-blue-purple"))
                        .frame(width: 186, height: 41)
                    Spacer()
                        .frame(width: 167.5)
                }
                HStack {
                    Text("\(userName)")
                        .foregroundColor(Color("cosmic-cobalt"))
                        .fontWeight(.bold)
                    Spacer()
                        .frame(width: 110)
                }
            }
            
            HStack {
                ZStack {
                    Rectangle()
                        .cornerRadius(20)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 4)
                            
                        )
                        .foregroundColor(Color("medium-slate-blue"))
                        .frame(width: 78, height: 41)
                    HStack {
                        Text("\(userPosition)")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .font(.title3)
                        Spacer()
                            .frame(width: 35)
                    }
                    HStack {
                        Spacer()
                            .frame(width: 35)
                        ZStack {
                            CircleProfile(profileImage: "\(userImage)")
                        }
                        
                    }
                    
                    
                }
                Spacer()
                    .frame(width: 273)
            }
        }
    }
}
