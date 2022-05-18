import Foundation
import SwiftUI
 
struct Challenge {
 
    var challengeTitle : String
    var challengeTeaser : String
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
 
 
 
 
let challenge1 = Challenge(challengeTitle: "Navigation responsable",
                           challengeTeaser: "Naviguer en accord avec la nature grâce à un nouveau moteur de recherche !",
                           challengeDescription: "Réduis ton empreinte carbone : utilise un moteur de recherche qui préserve la nature. \nPour valider ton défi fais une capture d'écran de la validation de ton inscription",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "En ligne",
                           chalTagNature1 : "#nature",
                           chalTagNature2 : "",
                           chalTagNature3:"",
                           challengePoints: 40000,
                           challengeStatus: "★ ☆ ☆",
                           prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: true, mediumLevel: false, difficultLevel: false),
                           tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge2 = Challenge(challengeTitle: "Non à la pub !",
                           challengeTeaser: "Être acteur de la preservation des ressources",
                           challengeDescription: "Pas de compromis avec le papier inutile et la déforestation. Colle un \"stop pub\" sur ta boite aux lettres et prend une photo pour valider ton défi",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Sur le terrain",
                           chalTagNature1 : "#nature",
                           chalTagNature2 : "",
                           chalTagNature3:"", challengePoints: 40000,
                           challengeStatus: "★ ☆ ☆",
                           prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: true, mediumLevel: false, difficultLevel: false),
                           tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge3 = Challenge(challengeTitle: "Partage tes \npréoccupations",
                           challengeTeaser: "",
                           challengeDescription: "Fais découvrir à tes contacts les enjeux liés à la biodiversité.\nPour valider ton défi fais une capture d'ecran de la validation de ton poste. ",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Depuis ton téléphone",
                           chalTagNature1 : "#nature",
                           chalTagNature2 : "#déchets",
                           chalTagNature3:"",
                           challengePoints: 80000,
                           challengeStatus: "★ ★ ☆",
                           prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: false, mediumLevel: true, difficultLevel: false), tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge4 = Challenge(challengeTitle: "Augmente la visibilité de tes prèoccupations.",
                           challengeTeaser: "",
                           challengeDescription: "Mets à jour ton profil sur les résaux. Captive l'attention sur les enjeux liés à la biodiversité.\nPour valider ton défi fais une nouvelle capture de ton profil.",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Depuis ton téléphone",
                           chalTagNature1 : "#nature",
                           chalTagNature2 : "",
                           chalTagNature3:"",
                           challengePoints: 80000,
                           challengeStatus: "★ ★ ☆",
                           prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: false, mediumLevel: true, difficultLevel: false), tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge5 = Challenge(challengeTitle: "Avant/Après",
                           challengeTeaser: "",
                           challengeDescription: "Réunis quelques amis et prenez en charge le nettoyage d'un endroit pollué par les déchets. \nPour valider ton défi fais une photo du butin",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Sur le terrain",
                           chalTagNature1 : "#nature",
                           chalTagNature2 : "#déchets",
                           chalTagNature3: "",
                           challengePoints: 120000,
                           challengeStatus: "★ ★ ★",
                           prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: false, difficultLevel: true),
                           tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge6 = Challenge(challengeTitle: "Un dèchet par jour.",
                           challengeTeaser: "",
                           challengeDescription: "Ramasse un déchet par jour. \nPour valider ton défi fait une photo du butin de ta semaine.",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Sur le terrain",
                           chalTagNature1 : "#nature",
                           chalTagNature2 : "#déchets",
                           chalTagNature3:"",
                           challengePoints: 40000,
                           challengeStatus: "★ ☆ ☆",
                           prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: true, mediumLevel: false, difficultLevel: false),
                           tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge7 = Challenge(challengeTitle: "Remplis la bouteille",
                           challengeTeaser: "",
                           challengeDescription: "30 milliards de mégots c'est trop! Récupère ceux que tu trouves et remplis une bouteille avec.\nPour valider ton défi fait une photo de la bouteille pleine",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Sur le terrain",
                           chalTagNature1 : "#nature",
                           chalTagNature2 : "#déchets",
                           chalTagNature3:"",
                           challengePoints: 80000,
                           challengeStatus: "★ ★ ☆",
                           prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: true, difficultLevel: false),
                           tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge8 = Challenge(challengeTitle: "Le pavé dans la mare",
                           challengeTeaser: "",
                           challengeDescription: "Place une bouteille (pleine) ou une brique dans le reservoir des toilettes. C'est 1,5L d'eau économisée. \nPour valider ton défi fait une photo de l'installation.",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Sur le terrain",
                           chalTagNature1 : "#nature",
                           chalTagNature2 : "",
                           chalTagNature3:"",
                           challengePoints: 80000,
                           challengeStatus: "★ ★ ☆",
                           prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: true, difficultLevel: false),
                           tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge9 = Challenge(challengeTitle: "Un refuge pour la \nbiodiversité",
                           challengeTeaser: "",
                           challengeDescription: "Installe un abris pour les petits oiseaux et une petite réserve de nourriture. \nPour valider ton défi fait une photo de l'installation.",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Sur le terrain",
                           chalTagNature1 : "#nature",
                           chalTagNature2 : "#animaux",
                           chalTagNature3:"",
                           challengePoints: 80000,
                           challengeStatus: "★ ★ ☆",
                           prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: true, difficultLevel: false),
                           tags: Tag(waste: false, animals: true, manif: false, petition: false, food: false, nature: true))
 
let challenge10 = Challenge(challengeTitle: "Une oasis au mileu \ndu béton.",
                            challengeTeaser: "",
                            challengeDescription: "Installe dans ton quartier un petit coin de verdure partagé.\nPour valider ton défi fait une photo de l'installation.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Sur le terrain",
                            chalTagNature1 : "#nature",
                            chalTagNature2 : "#animaux",
                            chalTagNature3:"",
                            challengePoints: 120000,
                            challengeStatus: "★ ★ ★",
                            prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: false, difficultLevel: true),
                            tags: Tag(waste: false, animals: true, manif: false, petition: false, food: false, nature: true))
 
let challenge11 = Challenge(challengeTitle: "Que d'eau !",
                            challengeTeaser: "",
                            challengeDescription: "Une douche par jour est elle vraiment nécessaire? Réduis leur nombre dans la mesure du possible et vois la facture d'eau s'evaporer. \nPour valider ton défi fait une photo des factures comparées.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Sur le terrain",
                            chalTagNature1 : "#nature",
                            chalTagNature2 : "",
                            chalTagNature3:"",
                            challengePoints: 120000,
                            challengeStatus: "★ ★ ★",
                            prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: false, difficultLevel: true), tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge12 = Challenge(challengeTitle: "Allo? Allo!",
                            challengeTeaser: "",
                            challengeDescription: "Collecte dans ton entourage les téléphones usagés pour des organismes en faveur des personnes défavorisées.\nPour valider ton défi fait une photo de la recolte.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Sur le terrain",
                            chalTagNature1 : "#nature",
                            chalTagNature2 : "#déchets",
                            chalTagNature3:"",
                            challengePoints: 120000,
                            challengeStatus: "★ ★ ★",
                            prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: false, difficultLevel: true),
                            tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge13 = Challenge(challengeTitle: "Pas de toxiques dans tes déchets",
                            challengeTeaser: "",
                            challengeDescription: "Trie tes medicaments périmés et apportes les à ton pharmacien.\nPour valider ton défi fait une photo du résultat du tri.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Sur le terrain",
                            chalTagNature1 : "#nature",
                            chalTagNature2 : "#déchets",
                            chalTagNature3:"",
                            challengePoints: 40000,
                            challengeStatus: "★ ☆ ☆",
                            prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: true, mediumLevel: false, difficultLevel: false),
                            tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge14 = Challenge(challengeTitle: "Change ton café",
                            challengeTeaser: "",
                            challengeDescription: "Utilise un filtre lavable.\nPour valider ton défi fait une photo de l'acquisition.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Sur le terrain",
                            chalTagNature1 : "#nature",
                            chalTagNature2 : "#déchets",
                            chalTagNature3:"",
                            challengePoints: 80000,
                            challengeStatus: "★ ★ ☆",
                            prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: true, difficultLevel: false),
                            tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge15 = Challenge(challengeTitle: "Change ton thé",
                            challengeTeaser: "",
                            challengeDescription: "Bannis le thé en sachet, utilise un filtre lavable.\nPour valider ton défi fait une photo de l'acquisition.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Sur le terrain",
                            chalTagNature1 : "#nature",
                            chalTagNature2 : "#déchets",
                            chalTagNature3:"",
                            challengePoints: 80000,
                            challengeStatus: "★ ★ ☆",
                            prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: true, difficultLevel: false),
                            tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge16 = Challenge(challengeTitle: "Vide ta corbeille",
                            challengeTeaser: "",
                            challengeDescription: "La corbeille de tes mails mobilise de l'energie sur les serveurs. Est-ce vraiment raisonable? Trie et vide ta corbeille.\nPour valider ton défi fait une photo de la corbeille vide.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Depuis ton mobile",
                            chalTagNature1 : "#nature",
                            chalTagNature2 : "",
                            chalTagNature3:"",
                            challengePoints: 80000,
                            challengeStatus: "★ ☆ ☆",
                            prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: false, mediumLevel: false, difficultLevel: false),
                            tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
                 
let challenge17 = Challenge(challengeTitle: "Le parrain des abeilles c'est toi!",
                            challengeTeaser: "",
                            challengeDescription: "Parraine une ruche \n https://www.untoitpourlesabeilles.fr.\nPour valider ton défi fait une photo du parrainage.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Depuis ton téléphone",
                            chalTagNature1 : "#nature",
                            chalTagNature2 : "#animaux",
                            chalTagNature3:"",
                            challengePoints: 120000,
                            challengeStatus: "★ ★ ★",
                            prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: false, mediumLevel: false, difficultLevel: true), tags: Tag(waste: false, animals: true, manif: false, petition: false, food: false, nature: true))
 
let challenge18 = Challenge(challengeTitle: "Le parrain des abeilles c'est toi!",
                            challengeTeaser: "",
                            challengeDescription: "Parraine un arbre.\nPour valider ton défi fait une photo du parrainage.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Depuis ton mobile",
                            chalTagNature1 : "#nature",
                            chalTagNature2 : "",
                            chalTagNature3:"",
                            challengePoints: 120000,
                            challengeStatus: "★ ★ ★",
                            prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: false, mediumLevel: false, difficultLevel: true),
                            tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge19 = Challenge(challengeTitle: "Le parrain des animaux c'est toi!",
                            challengeTeaser: "",
                            challengeDescription: "Parraine un animal.\nPour valider ton défi fait une photo du parrainage.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Depuis ton téléphone",
                            chalTagNature1 : "#nature",
                            chalTagNature2 : "#animaux",
                            chalTagNature3:"",
                            challengePoints: 120000,
                            challengeStatus: "★ ★ ★",
                            prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: true, mediumLevel: false, difficultLevel: true),
                            tags: Tag(waste: false, animals: true, manif: false, petition: false, food: false, nature: true))
 
let challenge20 = Challenge(challengeTitle: "Signer c'est s'engager",
                            challengeTeaser: "",
                            challengeDescription: "Signe les petitions en cours lancées par les organisations de défense de l'environement.\nPour valider ton défi fait une capture d'ecran de la confirmation.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Depuis ton téléphone",
                            chalTagNature1 : "#nature",
                            chalTagNature2 : "#engagement",
                            chalTagNature3:"",
                            challengePoints: 80000,
                            challengeStatus: "★ ★ ☆",
                            prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: false, mediumLevel: true, difficultLevel: false),
                            tags: Tag(waste: false, animals: false, manif: true, petition: false, food: false, nature: false))
 
 
let challenges = [challenge1, challenge2, challenge3, challenge4, challenge5, challenge6, challenge7, challenge8, challenge9, challenge10, challenge11, challenge12, challenge13, challenge15, challenge16, challenge17, challenge18, challenge19, challenge20]
 
 
var randomChallenge = challenges.randomElement()
