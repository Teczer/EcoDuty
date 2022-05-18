import Foundation
import SwiftUI
 
struct Challenge {
 
    var challengeTitle : String
    var challengeDescription : String
    var challengeTitleDetail: String
    var challengeInOut: String
    var chalTagNature1:String
    var chalTagNature2:String
    var chalTagNature3:String
    var challengePoints : Int
    var challengeStatus : String
    var prefer: Preferences
    var tags: Tag
    
}
 
 
 
 
let challenge1 = Challenge(challengeTitle: "Naviguer en accord avec \nla nature : EcoWeb",
                           challengeDescription: "Reduis ton empreinte carbone: utilise un moteur de recherche qui preserve la nature! \nPour valider ton défi fais une capture d'ecran de la validation de ton inscription",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Depuis ton téléphone",
                           chalTagNature1 : "Nature",
                           chalTagNature2 : "",
                           chalTagNature3:"",
                           challengePoints: 40000,
                           challengeStatus: "Facile",
                           prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: true, mediumLevel: false, difficultLevel: false),
                           tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge2 = Challenge(challengeTitle: "Non à la pub !",
                           challengeDescription: "Pas de compromis avec le papier inutile et la déforestaion. Colle un \"stop pub\" sur ta boite aux lettres.\nPour valider ton défi fais une capture d'ecran de la validation de ton inscription.",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Sur le terrain",
                           chalTagNature1 : "Nature",
                           chalTagNature2 : "",
                           chalTagNature3:"", challengePoints: 40000,
                           challengeStatus: "Facile",
                           prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: true, mediumLevel: false, difficultLevel: false),
                           tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge3 = Challenge(challengeTitle: "Partage tes \npréoccupations",
                           challengeDescription: "Fais découvrir à tes contacts les enjeux liés à la biodiversité.\nPour valider ton défi fais une capture d'ecran de la validation de ton poste. ",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Depuis ton téléphone",
                           chalTagNature1 : "Nature",
                           chalTagNature2 : "Déchets",
                           chalTagNature3:"",
                           challengePoints: 80000, challengeStatus: "Moyen",
                           prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: false, mediumLevel: true, difficultLevel: false), tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge4 = Challenge(challengeTitle: "Augmente la visibilité de tes prèoccupations.",
                           challengeDescription: "Mets à jour ton profil sur les résaux. Captive l'attention sur les enjeux liés à la biodiversité.\nPour valider ton défi fais une nouvelle capture de ton profil.",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Depuis ton téléphone",
                           chalTagNature1 : "Nature",
                           chalTagNature2 : "",
                           chalTagNature3:"",
                           challengePoints: 80000,
                           challengeStatus: "Moyen",
                           prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: false, mediumLevel: true, difficultLevel: false), tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge5 = Challenge(challengeTitle: "Avant/Après",
                           challengeDescription: "Réunis quelques amis et prenez en charge le nettoyage d'un endroit pollué par les déchets. \nPour valider ton défi fais une photo du butin",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Sur le terrain",
                           chalTagNature1 : "Nature",
                           chalTagNature2 : "Déchets",
                           chalTagNature3: "",
                           challengePoints: 120000,
                           challengeStatus: "Difficile",
                           prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: false, difficultLevel: true),
                           tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge6 = Challenge(challengeTitle: "Un dèchet par jour.",
                           challengeDescription: "Ramasse un déchet par jour. \nPour valider ton défi fait une photo du butin de ta semaine.",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Sur le terrain",
                           chalTagNature1 : "Nature",
                           chalTagNature2 : "Déchets",
                           chalTagNature3:"",
                           challengePoints: 40000,
                           challengeStatus: "Facile",
                           prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: true, mediumLevel: false, difficultLevel: false),
                           tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge7 = Challenge(challengeTitle: "Remplis la bouteille",
                           challengeDescription: "30 milliards de mégots c'est trop! Récupère ceux que tu trouves et remplis une bouteille avec.\nPour valider ton défi fait une photo de la bouteille pleine",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Sur le terrain",
                           chalTagNature1 : "Nature",
                           chalTagNature2 : "Déchets",
                           chalTagNature3:"",
                           challengePoints: 80000,
                           challengeStatus: "Moyen",
                           prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: true, difficultLevel: false),
                           tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge8 = Challenge(challengeTitle: "Le pavé dans la mare",
                           challengeDescription: "Place une bouteille (pleine) ou une brique dans le reservoir des toilettes. C'est 1,5L d'eau économisée. \nPour valider ton défi fait une photo de l'installation.",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Sur le terrain",
                           chalTagNature1 : "Nature",
                           chalTagNature2 : "",
                           chalTagNature3:"",
                           challengePoints: 80000,
                           challengeStatus: "Moyen",
                           prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: true, difficultLevel: false),
                           tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge9 = Challenge(challengeTitle: "Un refuge pour la \nbiodiversité",
                           challengeDescription: "Installe un abris pour les petits oiseaux et une petite réserve de nourriture. \nPour valider ton défi fait une photo de l'installation.",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Sur le terrain",
                           chalTagNature1 : "Nature",
                           chalTagNature2 : "Animaux",
                           chalTagNature3:"",
                           challengePoints: 80000,
                           challengeStatus: "Moyen",
                           prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: true, difficultLevel: false),
                           tags: Tag(waste: false, animals: true, manif: false, petition: false, food: false, nature: true))
 
let challenge10 = Challenge(challengeTitle: "Une oasis au mileu \ndu béton.",
                            challengeDescription: "Installe dans ton quartier un petit coin de verdure partagé.\nPour valider ton défi fait une photo de l'installation.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Sur le terrain",
                            chalTagNature1 : "Nature",
                            chalTagNature2 : "Animaux",
                            chalTagNature3:"",
                            challengePoints: 120000, challengeStatus: "Difficile",
                            prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: false, difficultLevel: true),
                            tags: Tag(waste: false, animals: true, manif: false, petition: false, food: false, nature: true))
 
let challenge11 = Challenge(challengeTitle: "Que d'eau !",
                            challengeDescription: "Une douche par jour est elle vraiment nécessaire? Réduis leur nombre dans la mesure du possible et vois la facture d'eau s'evaporer. \nPour valider ton défi fait une photo des factures comparées.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Sur le terrain",
                            chalTagNature1 : "Nature",
                            chalTagNature2 : "",
                            chalTagNature3:"",
                            challengePoints: 120000,
                            challengeStatus: "Difficile",
                            prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: false, difficultLevel: true), tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge12 = Challenge(challengeTitle: "Allo? Allo!",
                            challengeDescription: "Collecte dans ton entourage les téléphones usagés pour des organismes en faveur des personnes défavorisées.\nPour valider ton défi fait une photo de la recolte.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Sur le terrain",
                            chalTagNature1 : "Nature",
                            chalTagNature2 : "Déchets",
                            chalTagNature3:"",
                            challengePoints: 120000,
                            challengeStatus: "Difficile",
                            prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: false, difficultLevel: true),
                            tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge13 = Challenge(challengeTitle: "Pas de toxiques dans tes déchets",
                            challengeDescription: "Trie tes medicaments périmés et apportes les à ton pharmacien.\nPour valider ton défi fait une photo du résultat du tri.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Sur le terrain",
                            chalTagNature1 : "Nature",
                            chalTagNature2 : "Déchets",
                            chalTagNature3:"",
                            challengePoints: 40000, challengeStatus: "Facile",
                            prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: true, mediumLevel: false, difficultLevel: false),
                            tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge14 = Challenge(challengeTitle: "Change ton café",
                            challengeDescription: "Utilise un filtre lavable.\nPour valider ton défi fait une photo de l'acquisition.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Sur le terrain",
                            chalTagNature1 : "Nature",
                            chalTagNature2 : "Déchets",
                            chalTagNature3:"",
                            challengePoints: 80000,
                            challengeStatus: "Moyen",
                            prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: true, difficultLevel: false),
                            tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge15 = Challenge(challengeTitle: "Change ton thé",
                            challengeDescription: "Bannis le thé en sachet, utilise un filtre lavable.\nPour valider ton défi fait une photo de l'acquisition.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Sur le terrain",
                            chalTagNature1 : "Nature",
                            chalTagNature2 : "Déchets",
                            chalTagNature3:"",
                            challengePoints: 80000,
                            challengeStatus: "Moyen",
                            prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: true, difficultLevel: false),
                            tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge16 = Challenge(challengeTitle: "Vide ta corbeille",
                            challengeDescription: "La corbeille de tes mails mobilise de l'energie sur les serveurs. Est-ce vraiment raisonable? Trie et vide ta corbeille.\nPour valider ton défi fait une photo de la corbeille vide.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Depuis ton mobile",
                            chalTagNature1 : "Nature",
                            chalTagNature2 : "",
                            chalTagNature3:"",
                            challengePoints: 80000,
                            challengeStatus: "Facile",
                            prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: false, mediumLevel: false, difficultLevel: false),
                            tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
                 
let challenge17 = Challenge(challengeTitle: "Le parrain des abeilles c'est toi!",
                            challengeDescription: "Parraine une ruche \n https://www.untoitpourlesabeilles.fr.\nPour valider ton défi fait une photo du parrainage.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Depuis ton téléphone",
                            chalTagNature1 : "Nature",
                            chalTagNature2 : "Animaux",
                            chalTagNature3:"",
                            challengePoints: 120000,
                            challengeStatus: "Difficile",
                            prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: false, mediumLevel: false, difficultLevel: true), tags: Tag(waste: false, animals: true, manif: false, petition: false, food: false, nature: true))
 
let challenge18 = Challenge(challengeTitle: "Le parrain des abeilles c'est toi!",
                            challengeDescription: "Parraine un arbre.\nPour valider ton défi fait une photo du parrainage.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Depuis ton mobile",
                            chalTagNature1 : "Nature",
                            chalTagNature2 : "",
                            chalTagNature3:"Nature",
                            challengePoints: 120000, challengeStatus: "Difficile",
                            prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: false, mediumLevel: false, difficultLevel: true),
                            tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge19 = Challenge(challengeTitle: "Le parrain des animaux c'est toi!",
                            challengeDescription: "Parraine un animal.\nPour valider ton défi fait une photo du parrainage.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Depuis ton téléphone",
                            chalTagNature1 : "Nature",
                            chalTagNature2 : "Animaux",
                            chalTagNature3:"",
                            challengePoints: 120000,
                            challengeStatus: "Difficile",
                            prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: true, mediumLevel: false, difficultLevel: true),
                            tags: Tag(waste: false, animals: true, manif: false, petition: false, food: false, nature: true))
 
let challenge20 = Challenge(challengeTitle: "Signer c'est s'engager",
                            challengeDescription: "Signe les petitions en cours lancées par les organisations de défense de l'environement.\nPour valider ton défi fait une capture d'ecran de la confirmation.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Depuis ton téléphone",
                            chalTagNature1 : "Nature",
                            chalTagNature2 : "Engagement",
                            chalTagNature3:"",
                            challengePoints: 80000,
                            challengeStatus: "Moyen",
                            prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: false, mediumLevel: true, difficultLevel: false),
                            tags: Tag(waste: false, animals: false, manif: true, petition: false, food: false, nature: false))
 
 
let challenges = [challenge1, challenge2, challenge3, challenge4, challenge5, challenge6, challenge7, challenge8, challenge9, challenge10, challenge11, challenge12, challenge13, challenge15, challenge16, challenge17, challenge18, challenge19, challenge20]
 
 
var randomChallenge = challenges.randomElement()
