//
//  Challenge.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import Foundation

struct Challenge {
    
    var challengeTitle : String
    var challengeDescription : String
    var challengePoints : Int
    var challengeStatus : String
    
}






/*
 Challenges & préférences : >> Struct preference spécifique (et enlever les variables correspondantes dans les Struct User et Challenge)

 Challenge :
 Struct Challenge
     var challengeTitle
     var challengeDifficulty*
     var challengeDescription
     var challengePoints
     var challengeStatus
 var challengeTags* >> Tableau d’enum ?
 var challengeRealOrPhone *: Bool
 var challengeLocalization*
 * Ces variables seront à appeler depuis la struct Preferences donc elles ne figurent plus directement dans la struct Challenge.

 */
