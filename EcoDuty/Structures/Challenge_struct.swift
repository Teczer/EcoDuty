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
 
let challenge3 = Challenge(challengeTitle: "Partage tes préoccupations",
                           challengeTeaser: "Ton réseau peut tout changer",
                           challengeDescription: "Fais découvrir à tes contacts les enjeux liés à la biodiversité. \n   Fais une Capture d'écran de la validation de ton post pour valider ton défi.",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Depuis ton téléphone",
                           chalTagNature1 : "#nature",
                           chalTagNature2 : "#déchets",
                           chalTagNature3:"",
                           challengePoints: 80000,
                           challengeStatus: "★ ★ ☆",
                           prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: false, mediumLevel: true, difficultLevel: false), tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge4 = Challenge(challengeTitle: "Tes préoccupations.",
                           challengeTeaser: "Plus de visibilité c'est plus de force de conviction",
                           challengeDescription: "Mets à jour ton profil sur les réseaux. \nPour valider ton défi, fais une capture d'écran du nouveau design de ton profil.",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Depuis ton téléphone",
                           chalTagNature1 : "#nature",
                           chalTagNature2 : "",
                           chalTagNature3:"",
                           challengePoints: 80000,
                           challengeStatus: "★ ★ ☆",
                           prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: false, mediumLevel: true, difficultLevel: false), tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge5 = Challenge(challengeTitle: "C'est pollué !",
                           challengeTeaser: "Se retrousser les manches (sans oublier de mettre des gants...)",
                           challengeDescription: "Réunis quelques amis et prenez en charge le nettoyage d'un endroit pollué par les déchets. Une photo de la récolte validera ton défi.",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Sur le terrain",
                           chalTagNature1 : "#nature",
                           chalTagNature2 : "#déchets",
                           chalTagNature3: "",
                           challengePoints: 120000,
                           challengeStatus: "★ ★ ★",
                           prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: false, difficultLevel: true),
                           tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge6 = Challenge(challengeTitle: "1 déchet par jour.",
                           challengeTeaser: "Simple et efficace si on s'y met tous",
                           challengeDescription: "Ramasses 1 déchet par jour et photographie le butin de la semaine pour valider ton défi.",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Sur le terrain",
                           chalTagNature1 : "#nature",
                           chalTagNature2 : "#déchets",
                           chalTagNature3:"",
                           challengePoints: 40000,
                           challengeStatus: "★ ☆ ☆",
                           prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: true, mediumLevel: false, difficultLevel: false),
                           tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge7 = Challenge(challengeTitle: "Une bouteille bien remplie",
                           challengeTeaser: "Un geste qui préserve et sauve",
                           challengeDescription: "30 milliards de mégots c'est trop ! Récupère ceux que tu trouves et remplis une bouteille avec. Fais une photo de la pollution prise au piège pour valider ton défi.",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Sur le terrain",
                           chalTagNature1 : "#nature",
                           chalTagNature2 : "#déchets",
                           chalTagNature3:"",
                           challengePoints: 80000,
                           challengeStatus: "★ ★ ☆",
                           prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: true, difficultLevel: false),
                           tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge8 = Challenge(challengeTitle: "Un pavé dans la mare",
                           challengeTeaser: "C'est faire des économies et préserver une ressource essentielle ",
                           challengeDescription: "Place une bouteille pleine ou une brique dans le réservoir des toilettes. C'est 1,5 litre d'eau économisée ! Une photo de l'installation validera ton défi.",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Sur le terrain",
                           chalTagNature1 : "#nature",
                           chalTagNature2 : "",
                           chalTagNature3:"",
                           challengePoints: 80000,
                           challengeStatus: "★ ★ ☆",
                           prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: true, difficultLevel: false),
                           tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge9 = Challenge(challengeTitle: "Un refuge",
                           challengeTeaser: "Les oiseaux en sont un maillon indispensable",
                           challengeDescription: "Place une bouteille pleine ou une brique dans le réservoir des toilettes. C'est 1,5 litre d'eau économisée ! Une photo de l'installation validera ton défi.",
                           challengeTitleDetail: "Ton défi",
                           challengeInOut: "Sur le terrain",
                           chalTagNature1 : "#nature",
                           chalTagNature2 : "#animaux",
                           chalTagNature3:"",
                           challengePoints: 80000,
                           challengeStatus: "★ ★ ☆",
                           prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: true, difficultLevel: false),
                           tags: Tag(waste: false, animals: true, manif: false, petition: false, food: false, nature: true))
 
let challenge10 = Challenge(challengeTitle: "Une oasis, du béton",
                            challengeTeaser: "Un environnement recréé, c'est un espace pour ceux qui n'en ont plus",
                            challengeDescription: "Installe dans ton quartier un petit coin de verdure partagé et photographie les jeunes pousses pour valider ton défi.",
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
                            challengeTeaser: "Prendre exemple sur nos ancêtres ?",
                            challengeDescription: "Une douche par jour est-elle vraiment nécessaire ? Réduis leur nombre dans la mesure du possible et vois ta facture d'eau s'évaporer. Une photo des factures comparées validera ton défi.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Sur le terrain",
                            chalTagNature1 : "#nature",
                            chalTagNature2 : "",
                            chalTagNature3:"",
                            challengePoints: 120000,
                            challengeStatus: "★ ★ ★",
                            prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: false, difficultLevel: true), tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge12 = Challenge(challengeTitle: "Allo ? Allo !?",
                            challengeTeaser: "Des téléphones endormis autour de toi?",
                            challengeDescription: " Collecte dans ton entourage les téléphones usagés pour des organismes en faveur des personnes défavorisées. En vrac ou bien alignés, une photo des rescapés validera ton défi.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Sur le terrain",
                            chalTagNature1 : "#nature",
                            chalTagNature2 : "#déchets",
                            chalTagNature3:"",
                            challengePoints: 120000,
                            challengeStatus: "★ ★ ★",
                            prefer: Preferences(irlMethod: true, onlineMethod: false, easyLevel: false, mediumLevel: false, difficultLevel: true),
                            tags: Tag(waste: true, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge13 = Challenge(challengeTitle: "Déchets toxiques",
                            challengeTeaser: "Certains déchets sont une vraie plaie pour les écosystèmes",
                            challengeDescription: "Trie tes médicaments périmés et apporte-les à ton pharmacien. Photographie le résultat du tri pour valider ton défi.",
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
                            challengeTeaser: "Même s'il est équitable et bio, sa préparation peut être optimisée",
                            challengeDescription: "Utilise un filtre lavable et photographie cette belle acquisition pour valider ton défi",
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
                            challengeTeaser: "Même s'il est équitable et bio, sa préparation peut être optimisée",
                            challengeDescription: "Utilise un filtre lavable et photographie cette belle acquisition pour valider ton défi",
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
                            challengeTeaser: "Une corbeille qui consomme de l'énergie ?",
                            challengeDescription: " La corbeille de tes mails mobilise de l'energie sur les serveurs, trie et vide ta corbeille. Fais une capture d'écran de ta corbeille vide pour valider ton défi.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Depuis ton mobile",
                            chalTagNature1 : "#nature",
                            chalTagNature2 : "",
                            chalTagNature3:"",
                            challengePoints: 80000,
                            challengeStatus: "★ ★ ☆",
                            prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: false, mediumLevel: false, difficultLevel: false),
                            tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
                 
let challenge17 = Challenge(challengeTitle: "Le parrain des abeilles",
                            challengeTeaser: "Agrandis ta famille de coeur",
                            challengeDescription: "Parraine une ruche. Fais une capture d'écran du parrainage pour valider ton défi.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Depuis ton téléphone",
                            chalTagNature1 : "#nature",
                            chalTagNature2 : "#animaux",
                            chalTagNature3:"",
                            challengePoints: 120000,
                            challengeStatus: "★ ★ ★",
                            prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: false, mediumLevel: false, difficultLevel: true), tags: Tag(waste: false, animals: true, manif: false, petition: false, food: false, nature: true))
 
let challenge18 = Challenge(challengeTitle: "Le parrain des arbres",
                            challengeTeaser: "Agrandis ta famille de coeur",
                            challengeDescription: "Parraine un arbre.  Fais une capture d'écran du parrainage pour valider ton défi.",
                            challengeTitleDetail: "Ton défi",
                            challengeInOut: "Depuis ton mobile",
                            chalTagNature1 : "#nature",
                            chalTagNature2 : "",
                            chalTagNature3:"",
                            challengePoints: 120000,
                            challengeStatus: "★ ★ ★",
                            prefer: Preferences(irlMethod: false, onlineMethod: true, easyLevel: false, mediumLevel: false, difficultLevel: true),
                            tags: Tag(waste: false, animals: false, manif: false, petition: false, food: false, nature: true))
 
let challenge19 = Challenge(challengeTitle: "Le parrain des animaux",
                            challengeTeaser: "Agrandis ta famille de coeur",
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
 
let challenge20 = Challenge(challengeTitle: "Signer, c'est s'engager",
                            challengeTeaser: "Et ça marche",
                            challengeDescription: "Signe les pétitions en cours lancées par les organisations de défense de l'environement. Fais une capture d'écran de la validation de ton engagement.",
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
