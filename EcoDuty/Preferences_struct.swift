//
//  Preferences.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import Foundation
 
struct Preferences {
    
   
    var irlMethod : Bool
    var onlineMethod : Bool
    var easyLevel:Bool
    var mediumLevel:Bool
    var difficultLevel:Bool
    
  
    
 
}
 
 
struct Tag{
    var waste:Bool = false
    var animals:Bool = false
    var manif:Bool = false
    var petition:Bool = false
    var food:Bool = false
}





/*
 
 
 
 Préférences :
 Struct Preferences
     var selectedDifficulty (choix multiples possibles : tableau d’Enum)
 var irlMethod : Bool
     var onlineMethod : Bool
 var selectedLocalization (sauf si on abandonne le filtre des challenges basé sur la localisation >> enum Tag {  … )

 
*/
