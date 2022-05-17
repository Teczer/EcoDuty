//
//  User.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import Foundation
 
struct User {
    
    var userName : String
    var userLevel : Level
    var userPoints : Int // pour le classement
    var userImage : String
    var userBadges : [String]
    var userLocalization : Localization
    var myChallenge: [Challenge]
    
    enum Level {
        
    }
    enum Localization{
        
    }
}




/*
 
 Utilisateur.rice :
 Struct User
     var userName:String
     var userLevel: Level
     var userImage:String
 var userBadges [ ]
     var userLocalization: String (département)

 
 */
