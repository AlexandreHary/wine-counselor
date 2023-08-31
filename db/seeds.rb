Answer.destroy_all
Option.destroy_all
Question.destroy_all
Chatroom.destroy_all
User.destroy_all

puts 'creating'

user_1 = User.create!(first_name: "Alex", last_name: "HARY", email: "alexandre@winecounselor.com", password: "azerty1")
user_2 = User.create!(first_name: "Joris", last_name: "CHENNA", email: "joris@winecounselor.com", password: "azerty2")
user_3 = User.create!(first_name: "Enola", last_name: "LUKASIEWICZ", email: "enola@winecounselor.com", password: "azerty3")

chatroom_1 = Chatroom.create!(user: user_1)
chatroom_2 = Chatroom.create!(user: user_2)
chatroom_3 = Chatroom.create!(user: user_3)

question_1 = Question.create!(title: "1. Quelle occasion ?", position: 1, last: false)
question_2 = Question.create!(title: "2. Quel type de repas ? ", position: 2, last: false)
question_3 = Question.create!(title: "3. Quelle couleur de vin ?", position: 3, last: false)
question_4 = Question.create!(title: "4. Quel gout ? - Leger / fort ? - fruité / tanique", position: 4, last: false)
question_5 = Question.create!(title: "5. Voulez-vous un vin bio, vin naturel, vin sans sulfites", position: 5, last: true)

option_1_q1 = Option.create!(question: question_1, verbose: 'Plutôt en', small: 'Famille')
option_2_q1 = Option.create!(question: question_1, verbose: 'Plutôt entre', small: 'amis')
option_3_q1 = Option.create!(question: question_1, verbose: 'Plutôt avec des', small: 'collègues')

option_1_q2 = Option.create!(question: question_2, verbose: 'Plutôt pour de la', small: 'viande')
option_2_q2 = Option.create!(question: question_2, verbose: 'Plutôt pour du', small: 'poisson')
option_3_q2 = Option.create!(question: question_2, verbose: 'Plutôt', small: 'végétarien')

option_1_q3 = Option.create!(question: question_3, verbose: 'Plutôt du', small: 'rouge')
option_2_q3 = Option.create!(question: question_3, verbose: 'Plutôt du', small: 'blanc')
option_3_q3 = Option.create!(question: question_3, verbose: 'Plutôt du', small: 'rosé')

option_1_q4 = Option.create!(question: question_4, verbose: 'vous préférez un vin', small: 'fort')
option_2_q4 = Option.create!(question: question_4, verbose: 'vous préférez un vin', small: 'léger')
option_3_q4 = Option.create!(question: question_4, verbose: 'vous préférez un vin', small: 'fruité')

option_1_q5 = Option.create!(question: question_5, verbose: 'Vous préférez un vin', small: 'naturel')
option_2_q5 = Option.create!(question: question_5, verbose: 'Vous préférez un vin', small: 'bio')
option_3_q5 = Option.create!(question: question_5, verbose: 'Vous préférez un vin sans', small: 'sulfites')

puts 'finished'

wine_1 = Wine.create!(name: "Chateaux Peyrabon", appellation: "Bordeaux Haut-Médoc", year: "2019", description: "Un vin puissant mais conviviale, capable de convenir au plus grand nombre. Spécialement fait pour les repas de famille, ce vin conviendra aux palais les plus sensibles !" ,rating: 4.1 ) #rouge
wine_2 = Wine.create!(name: "Chateaux Les Fiefs de la Grange", appellation: "Bordeaux Saint-Julien", year: "2016", description: "Le deuxième vin du fameux Chateau LaGrange, issu d'une petite appellation du Bordelais, ce vin est particulièrement apprécié pour ses notes de mures, de tabac et de fruits noirs. Un vin gourmand, à partager entre amis ou en famille" ,rating: 3.9)#rouge
wine_3 = Wine.create!(name: "Chateaux La Dominique", appellation: "Bordeaux Saint-Emillion Grand Cru Classé", year: "2015", description: "Un des grand cru classé de Saint-Emilion, très représentatif de la région. Une association entre le merlot, le cabernet-franc et le petit vertdot incroyable qui fera jubiler les connaisseurs et surprendra votre entourage ! Notes de mûres fraiches, fruits noirs confits, touches de fumé" ,rating: 4.3)#rouge
wine_4 = Wine.create!(name: "Domaine du Bienheureux", appellation: "Chateauneuf-du-pape", year: "2020", description: "Parfait pour un repas ! Un vin à contre-pied des standards de Châteauneuf-du-Pape – de la densité et des épices oui mais en finesse ! Tout aussi profond, il a des parfums délicats, avec une touche acidulée voire mentholée en finale… " ,rating: 3.8)#rouge
wine_5 = Wine.create!(name: "Paul Jaboulet Ainé, les Jalets ", appellation: "Rhône Crozes-Hermitage", year: "2021", description: "Un superbe vin blanc, soyeux en bouche et proposant une jolie finale, a consommer autour des 16°C, particulièrement apprécié avec un poisson" ,rating: 3.7)#blanc
wine_6 = Wine.create!(name: "Domaine Fouassier, les Grands Champs", appellation: "Loire , Sancerre", year: "2022", description: "Domaine historique de la Loire, propose son célèbre sauvignon dan sun flacon a prix raisonnable ! Goutez ces fruits corquants a chaire blanche, ses touches de fleurs et son indéflectible toastage au chêne français ! A partager, sans retenue", rating: 3.5)#blanc
wine_7 = Wine.create!(name: "Chateaux Guiraud, le G de Guiraud", appellation: "Bordeaux ", year: "2018", description: "Une déclinaison surprenant pour un domaine spécialisé dans la production de vins rouges, et qui pourant a réussi a surprendre les pluys grands oenologues! Un bouche très ample qui apporte énormément de rondeur au palais, le tout travaillé a la façon bourguignonne (le batonnage a été appliqué avec subtilité), un coup de coeur de winecounselor" ,rating: 3.7)#blanc
wine_8 = Wine.create!(name: "Château Minuty, M de Minuty", appellation: "Provence , Côtes de Provence", year: "2022", description: "Sans doute l'un des plus beaux rosé de Provence, un robe claire légèrement saumonnée, un parfun de vivacité et de fraicheur une fois en bouche, le tout dans une bouteille éléguantes reproduisant les courbes du domaine, à consommer !", rating: 4.2)#rosé
wine_9 = Wine.create!(name: "Château du Seuil", appellation: "Provence , Côtes de Provence", year: "2022", description: "Une jolie découverte vous fait envie ? Besoin de voyager à petit prix mais dans un bon confort? Voici ce qu'est ce rosé très bien travaillé, vous emmenant a destination de la provence sans vous bousculer", rating: 3.5)#rosé
wine_10 = Wine.create!(name: "Domaine Casanova", appellation: "Corse", year: "2021", description: "Un vin rosé de Corse fruité et agréable en bouche, à boire bien frais bien sûr. On l'apprécie à l'apéro mais aussi tout le long du repas." ,rating: 3.9)#rosé
wine_11 = Wine.create!(name: "Louis Jadot Bourgogne Couvent des Jacobins", appellation: "Bordeaux Saint-Emillion Grand Cru Classé", year: "2019", description: "Des arômes de petits fruits rouges des bois, avec une finale subtilement fumée ! Idéal pour entrer dans l'univers Jadot !" ,rating: 3.98)#rouge
wine_12 = Wine.create!(name: "Vincent Gaudry Vincengetorix", appellation: "Loire , Sancerre", year: "2020", description: "Le nez développe d’intenses arômes floraux comme la violette et de fruits rouges acidulés. La bouche dévoile de beaux tanins serrés avec une très belle densité. Ce pinot noir se termine en finale avec de belles notes de fruits noirs sauvages. Servir à une température de 12 - 14°" ,rating: 3.52 )#rouge
wine_13 = Wine.create!(name: "Domaine des Cassagnoles Gros Manseng Sélection", appellation: "Sud-Ouest , Côtes de Gascogne", year: "2020", description: "3* coup de coeur du Guide Hachette 2023 !  " ,rating: 4.25)#blanc
wine_14 = Wine.create!(name: "Domaine de Bonnefil, Methode Brut Blanc", appellation: "Sud-Ouest , Gaillac", year: "2019", description: "Saviez-vous que Gaillac avait sa propre spécialité ? Un vin blanc perlant ! Non ce n'est pas un champagne, ni un crémant, ni même un mousseux. Il s'agit là du plus beau vin effervfescent du sud-ouest ! parfait en apéritif ou en dessert" ,rating:3.42)#blanc
wine_15 = Wine.create!(name: "Domaine de L'Estagnère Rosé 2021", appellation: "Languedoc-Roussillon , Cité-de-Carcassonne", year: "2021", description: "Un rosé assez structuré dont la finale en bouche offre une belle persistance. Idéal pour accompagner des viandes grillées au barbecue, il s'ouvrira également sur des arômes plus pâtissiers après 1 an ou 2 en bouteille." ,rating: 3.77)#rosé
wine_16 = Wine.create!(name: "Domaine de L'Ostal Grand Vin 2018", appellation: "Languedoc-Roussillon , Minervois La Livinière", year: "2018", description: "Coup de Coeur 2* du Guide Hachette des vins 2023 !" ,rating: 3.8)#rouge
wine_17 = Wine.create!(name: "Pétrus", appellation: "Bordeaux, Pomerol", year: "1995", description: "Il y a le nom. Il y a le paradis. Il a dieu et son associé. Ils font du vin. Naturellement se noue une complicité entre les hommes, pardon, les dieux, c’est bien normal ; le résultat est…à la hauteur. Vous l’aurez compris, on ne parle ici plus guère de vin tant le liquide est estimé, estimable, choyé, recherché, évocateur, enchanteur…" ,rating: 4.99)#rouge
