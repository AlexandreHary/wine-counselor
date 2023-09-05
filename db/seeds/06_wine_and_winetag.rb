require "open-uri"

puts 'wines'

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1693478987/chateau_peyrabon_zptgjz.jpg")
wine_1 = Wine.create!(name: "Chateaux Peyrabon", appellation: "Bordeaux Haut-Médoc", year: "2019", description: "Un vin puissant mais conviviale, capable de convenir au plus grand nombre. Spécialement fait pour les repas de famille, ce vin conviendra aux palais les plus sensibles !" ,rating: 4.1) #rouge
wine_1.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_1.save

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1693479151/fiefslagrange_ub71nt.jpg")
wine_2 = Wine.create!(name: "Chateaux Les Fiefs de Lagrange", appellation: "Bordeaux Saint-Julien", year: "2016", description: "Le deuxième vin du fameux Chateau LaGrange, issu d'une petite appellation du Bordelais, ce vin est particulièrement apprécié pour ses notes de mures, de tabac et de fruits noirs. Un vin gourmand, à partager entre amis ou en famille" ,rating: 3.9)#rouge
wine_2.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_2.save

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1693479228/chateau_la_dominique_olygqy.jpg")
wine_3 = Wine.create!(name: "Chateaux La Dominique", appellation: "Bordeaux Saint-Emillion Grand Cru Classé", year: "2015", description: "Un des grand cru classé de Saint-Emilion, très représentatif de la région. Une association entre le merlot, le cabernet-franc et le petit vertdot incroyable qui fera jubiler les connaisseurs et surprendra votre entourage ! Notes de mûres fraiches, fruits noirs confits, touches de fumé" ,rating: 4.3)#rouge
wine_3.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_3.save

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1693479260/chateau_neuf_du_pape_j16s5o.jpg")
wine_4 = Wine.create!(name: "Domaine du Bienheureux", appellation: "Chateauneuf-du-pape", year: "2020", description: "Parfait pour un repas ! Un vin à contre-pied des standards de Châteauneuf-du-Pape – de la densité et des épices oui mais en finesse ! Tout aussi profond, il a des parfums délicats, avec une touche acidulée voire mentholée en finale… " ,rating: 3.8)#rouge
wine_4.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_4.save

file = URI.open("https://vinformateur.com/wp-content/uploads/2023/04/Mule-Noire-Crozes-Hermitage-Paul-Jaboulet-Aine-2020.jpg")
wine_5 = Wine.create!(name: "Paul Jaboulet Ainé, les Jalets ", appellation: "Rhône Crozes-Hermitage", year: "2021", description: "Un superbe vin blanc, soyeux en bouche et proposant une jolie finale, a consommer autour des 16°C, particulièrement apprécié avec un poisson" ,rating: 3.7)#blanc
wine_5.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_5.save

file = URI.open("https://www.whynat.fr/cdn/shop/products/vin-nature-blanc-les-grands-champs-2018-domaine-fouassier-sancerre-loire_1024x1024.jpg?v=1627908751")
wine_6 = Wine.create!(name: "Domaine Fouassier, les Grands Champs", appellation: "Loire , Sancerre", year: "2022", description: "Domaine historique de la Loire, propose son célèbre sauvignon dan sun flacon a prix raisonnable ! Goutez ces fruits corquants a chaire blanche, ses touches de fleurs et son indéflectible toastage au chêne français ! A partager, sans retenue", rating: 3.5)#blanc
wine_6.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_6.save

file = URI.open("https://served.mt/app/uploads/2022/09/DA0DC12F-431E-488D-947B-5669AB4A5385-1453x2048.jpeg")
wine_7 = Wine.create!(name: "Chateaux Guiraud, le G de Guiraud", appellation: "Bordeaux ", year: "2018", description: "Une déclinaison surprenant pour un domaine spécialisé dans la production de vins rouges, et qui pourant a réussi a surprendre les pluys grands oenologues! Un bouche très ample qui apporte énormément de rondeur au palais, le tout travaillé a la façon bourguignonne (le batonnage a été appliqué avec subtilité), un coup de coeur de winecounselor" ,rating: 3.7)#blanc
wine_7.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_7.save

file = URI.open("https://www.wine-searcher.com/images/labels/11/32/10961132.jpg?width=466&height=400&fit=bounds")
wine_8 = Wine.create!(name: "Château Minuty, M de Minuty", appellation: "Provence , Côtes de Provence", year: "2022", description: "Sans doute l'un des plus beaux rosé de Provence, un robe claire légèrement saumonnée, un parfun de vivacité et de fraicheur une fois en bouche, le tout dans une bouteille éléguantes reproduisant les courbes du domaine, à consommer !", rating: 4.2)#rosé
wine_8.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_8.save

file = URI.open("https://www.routedesvinsdeprovence.com/wp-content/uploads/2017/12/Copyright-Chateau-du-Seuil-10-1800x1200.jpg")
wine_9 = Wine.create!(name: "Château du Seuil", appellation: "Provence , Côtes de Provence", year: "2022", description: "Une jolie découverte vous fait envie ? Besoin de voyager à petit prix mais dans un bon confort? Voici ce qu'est ce rosé très bien travaillé, vous emmenant a destination de la provence sans vous bousculer", rating: 3.5)#rosé
wine_9.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_9.save

file = URI.open("https://static3.wineandco.com/themes/wineandco/images/produits/2/0/2/2/grd20225.jpg")
wine_10 = Wine.create!(name: "Domaine Casanova", appellation: "Corse", year: "2021", description: "Un vin rosé de Corse fruité et agréable en bouche, à boire bien frais bien sûr. On l'apprécie à l'apéro mais aussi tout le long du repas." ,rating: 3.9)#rosé
wine_10.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_10.save

file = URI.open("https://static3.wineandco.com/themes/wineandco/images/produits/5/0/3/1/grd50319.jpg")
wine_11 = Wine.create!(name: "Louis Jadot Bourgogne Couvent des Jacobins", appellation: "Bordeaux Saint-Emillion Grand Cru Classé", year: "2019", description: "Des arômes de petits fruits rouges des bois, avec une finale subtilement fumée ! Idéal pour entrer dans l'univers Jadot !" ,rating: 3.98)#rouge
wine_11.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_11.save

file = URI.open("https://static3.wineandco.com/themes/wineandco/images/produits/4/9/4/7/grd49470.jpg")
wine_12 = Wine.create!(name: "Vincent Gaudry Vincengetorix", appellation: "Loire , Sancerre", year: "2020", description: "Le nez développe d’intenses arômes floraux comme la violette et de fruits rouges acidulés. La bouche dévoile de beaux tanins serrés avec une très belle densité. Ce pinot noir se termine en finale avec de belles notes de fruits noirs sauvages. Servir à une température de 12 - 14°" ,rating: 3.52 )#rouge
wine_12.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_12.save

file = URI.open("https://static.wineandco.com/themes/wineandco/images/produits/5/2/1/2/grd52129.jpg")
wine_13 = Wine.create!(name: "Domaine des Cassagnoles Gros Manseng Sélection", appellation: "Sud-Ouest , Côtes de Gascogne", year: "2020", description: "3* coup de coeur du Guide Hachette 2023 !  " ,rating: 4.25)#blanc
wine_13.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_13.save

file = URI.open("https://res.cloudinary.com/wineandco/image/upload/c_pad,h_435,w_565/v1/products/domaine-de-bonnefil-gaillac-methode-brut-blanc-64904bd38fa5e.jpg")
wine_14 = Wine.create!(name: "Domaine de Bonnefil, Methode Brut Blanc", appellation: "Sud-Ouest , Gaillac", year: "2019", description: "Saviez-vous que Gaillac avait sa propre spécialité ? Un vin blanc perlant ! Non ce n'est pas un champagne, ni un crémant, ni même un mousseux. Il s'agit là du plus beau vin effervfescent du sud-ouest ! parfait en apéritif ou en dessert" ,rating:3.42)#blanc
wine_14.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_14.save

file = URI.open("https://www.gerard-bertrand.com/cdn/shop/products/domaine-de-lestagnere-rose_323e15b6-5168-4d60-a8c7-146e12d6dec4_1200x.jpg?v=1613582597")
wine_15 = Wine.create!(name: "Domaine de L'Estagnère Rosé 2021", appellation: "Languedoc-Roussillon , Cité-de-Carcassonne", year: "2021", description: "Un rosé assez structuré dont la finale en bouche offre une belle persistance. Idéal pour accompagner des viandes grillées au barbecue, il s'ouvrira également sur des arômes plus pâtissiers après 1 an ou 2 en bouteille." ,rating: 3.77)#rosé
wine_15.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_15.save

file = URI.open("https://densidsteflaske.dk/cdn/shop/products/l-ostal-cazes-grand-vin-minervois-la-liviniere-2016-l-ostal-cazes-rodvin-21248146440353.jpg?v=1612529152")
wine_16 = Wine.create!(name: "Domaine de L'Ostal Grand Vin 2018", appellation: "Languedoc-Roussillon , Minervois La Livinière", year: "2018", description: "Coup de Coeur 2* du Guide Hachette des vins 2023 !" ,rating: 3.8)#rouge
wine_16.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_16.save

file = URI.open("https://maison-wineted.com/cdn/shop/products/PETRUS_3cdf031a-5afb-4ed8-a58e-f6b53a9d46bf.jpg?v=1635519748")
wine_17 = Wine.create!(name: "Pétrus", appellation: "Bordeaux, Pomerol", year: "1995", description: "Il y a le nom. Il y a le paradis. Il a dieu et son associé. Ils font du vin. Naturellement se noue une complicité entre les hommes, pardon, les dieux, c’est bien normal ; le résultat est…à la hauteur. Vous l’aurez compris, on ne parle ici plus guère de vin tant le liquide est estimé, estimable, choyé, recherché, évocateur, enchanteur…" ,rating: 4.99)#rouge
wine_17.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_17.save

puts 'creating wine_tags'

WineTag.create!(tag: Tag.first, wine: wine_1 )
WineTag.create!(tag: Tag.offset(3).first, wine: wine_1 )
WineTag.create!(tag: Tag.offset(6).first, wine: wine_1 )
WineTag.create!(tag: Tag.offset(9).first, wine: wine_1 )
WineTag.create!(tag: Tag.offset(12).first, wine: wine_1 )

WineTag.create!(tag: Tag.second, wine: wine_2 )
WineTag.create!(tag: Tag.offset(4).first, wine: wine_2 )
WineTag.create!(tag: Tag.offset(7).first, wine: wine_2 )
WineTag.create!(tag: Tag.offset(10).first, wine: wine_2 )
WineTag.create!(tag: Tag.offset(13).first, wine: wine_2 )

WineTag.create!(tag: Tag.offset(2).first, wine: wine_3 )
WineTag.create!(tag: Tag.offset(5).first, wine: wine_3 )
WineTag.create!(tag: Tag.offset(8).first, wine: wine_3 )
WineTag.create!(tag: Tag.offset(11).first, wine: wine_3 )
WineTag.create!(tag: Tag.offset(14).first, wine: wine_3 )
