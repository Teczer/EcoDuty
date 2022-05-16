//
//  Preferences.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import Foundation

struct Preferences {
    
    var selectedDifficulty: Difficulty
    var irlMethod : Bool
    var onlineMethod : Bool
    var selectedLocalization : Localisation
    
    
    enum Difficulty{
        
    }
    
    enum Tag {
        case waste, animals, nature, manif, petition, food
    }
    
    enum Localisation {
        
    }
}







/*
 
 
 
 Préférences :
 Struct Preferences
     var selectedDifficulty (choix multiples possibles : tableau d’Enum)
 var irlMethod : Bool
     var onlineMethod : Bool
 var selectedLocalization (sauf si on abandonne le filtre des challenges basé sur la localisation >> enum Tag {  … )

 
*/
