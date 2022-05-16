//
//  Level.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import Foundation

struct Level {
    
    var levelNumber: Int
    var levelTitle: Title
    var levelBadge: Badge
    var levelExperience: Int
    
    enum Title {
        
    }
    
    enum Badge {
        
    }
}


/*
 
 Niveaux :
 Struct Level
     var levelNumber
     var levelTitle
     var levelBadge
     var levelExperience
 
 Classement :
 >> Tableaux d’utilisateur.rice.s filtrés aux niveaux local et national en fonction de leurs points (pas besoin d’une structure) :
 .filter, .sort / sorted >> à regarder pour trier/filtrer des contenus (ranking, points)    

 
 */
