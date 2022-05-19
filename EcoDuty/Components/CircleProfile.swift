//
//  CircleProfile.swift
//  EcoDuty
//
//  Created by Apprenant 98 on 13/05/2022.
//

import SwiftUI

struct CircleProfile: View {
    var profileImage: String
    
    
    var body: some View {
     Image(profileImage)
            .resizable()
            .renderingMode(.original)
            .clipShape(Circle())
            .overlay(Circle()
                .stroke(Color.black, lineWidth: 2))
          .frame(width: 36, height: 36)
    }
}

struct CircleProfile_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CircleProfile(profileImage: "ArianaGrande")
            CircleProfile(profileImage: "ariana-grande-white")
            CircleProfile(profileImage: "doja-cat")
            
                
        }.previewLayout(.sizeThatFits)
    }
}
