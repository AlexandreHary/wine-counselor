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

file = URI.open("https://static3.wineandco.com/themes/wineandco/images/produits/5/0/3/3/grd50339.jpg")
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

file = URI.open("https://static2.wineandco.com/themes/wineandco/images/produits/5/2/0/9/grd52091.jpg")
wine_10 = Wine.create!(name: "Domaine Casanova", appellation: "Corse", year: "2021", description: "Un vin rosé de Corse fruité et agréable en bouche, à boire bien frais bien sûr. On l'apprécie à l'apéro mais aussi tout le long du repas." ,rating: 3.9)#rosé
wine_10.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_10.save

file = URI.open("https://static3.wineandco.com/themes/wineandco/images/produits/5/0/3/1/grd50319.jpg")
wine_11 = Wine.create!(name: "Louis Jadot Bourgogne Couvent des Jacobins", appellation: "Bourgogne", year: "2019", description: "Des arômes de petits fruits rouges des bois, avec une finale subtilement fumée ! Idéal pour entrer dans l'univers Jadot !" ,rating: 3.98)#rouge
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
wine_16 = Wine.create!(name: "Domaine de L'Ostal", appellation: "Languedoc-Roussillon , Minervois La Livinière", year: "2018", description: "Coup de Coeur 2* du Guide Hachette des vins 2023 !" ,rating: 3.8)#rouge
wine_16.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_16.save

file = URI.open("https://maison-wineted.com/cdn/shop/products/PETRUS_3cdf031a-5afb-4ed8-a58e-f6b53a9d46bf.jpg?v=1635519748")
wine_17 = Wine.create!(name: "Pétrus", appellation: "Bordeaux, Pomerol", year: "1995", description: "Il y a le nom. Il y a le paradis. Il a dieu et son associé. Ils font du vin. Naturellement se noue une complicité entre les hommes, pardon, les dieux, c’est bien normal ; le résultat est…à la hauteur. Vous l’aurez compris, on ne parle ici plus guère de vin tant le liquide est estimé, estimable, choyé, recherché, évocateur, enchanteur…" ,rating: 4.99)#rouge
wine_17.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_17.save

file = URI.open("https://www.vinatis.com/63716-thickbox_default/brouilly-les-clochers-2021-vignerons-de-bel-air.png")
wine_18 = Wine.create!(name: "Vignerons de Bel Air, Les Clochers", appellation: "Beaujolais, Brouilly", year: "2021", description: "Vin fin, léger, délicat mais qui pour autant ne manque pas de caractère et de fruit. Il a aussi un petit côté minéral et frais très appréciable. A acheter les yeux fermés !" ,rating: 3.5)#rouge
wine_18.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_18.save

file = URI.open("https://www.vinatis.com/60612-thickbox_default/morgon-cote-du-py-2017-chateau-des-jacques.png")
wine_19 = Wine.create!(name: "Chateau des Jacques, Côte du Py", appellation: "Beaujolais, Morgon", year: "2017", description: "Ce Morgon est un vin rouge séduisant et expressif. Son nez délicat dévoile des arômes de fruits rouges frais et de fleurs. En bouche, sa texture veloutée et ses tanins fins offrent une agréable sensation. Les saveurs fruitées se mêlent harmonieusement avec une légère note minérale." ,rating: 4.75)#rouge
wine_19.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_19.save

file = URI.open("https://www.vinatis.com/74764-thickbox_default/beaujolais-lancie-blanc-2021-domaine-des-nugues.png")
wine_20 = Wine.create!(name: "Domaine des Nugues", appellation: "Beaujolais, Lancie", year: "2021", description: "Millésime après millésime, on est jamais déçu par ce chardonnay Made In Beaujolais. Une acidité maîtrisée, des arômes de fruits blancs qui se marieront très bien avec tout types de poissons blancs ! Superbe rapport qualité/prix/plaisir !" ,rating: 4.5)#blanc
wine_20.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_20.save

file = URI.open("https://www.vinatis.com/53480-thickbox_default/riesling-grand-cru-kaefferkopf-2018-domaine-meyer-fonne.png")
wine_21 = Wine.create!(name: "Domaine Meyer Fonne, Riesling Kaefferkofp", appellation: "Alsace, Grand Cru", year: "2018", description: " Un soupçon de tanin en fin de bouche lui permet de naviguer directement vers les meilleurs restaurants de poissons du monde entier." ,rating: 4.20)#blanc
wine_21.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_21.save

file = URI.open("https://www.vinatis.com/57756-thickbox_default/cremant-d-alsace-brut-rose-bestheim.png")
wine_22 = Wine.create!(name: "Bestheim, Brut Rosé", appellation: "Alsace, Crémant d'Alsace", year: "2023", description: "Mis en avant par une belle récompense au Concours Agricole de Paris, ce vin effervescent appelé Crémant Brut Rosé est une superbe cuvée au rapport qualité/prix imbattable !" ,rating: 3.20)#rosé
wine_22.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_22.save

file = URI.open("https://www.vinatis.com/68520-thickbox_default/pinot-noir-2018-les-princes-abbes-domaine-schlumberger.png")
wine_23 = Wine.create!(name: "Domaine Schlumberger, Les Princes Abbé", appellation: "Alsace, Pinot Noir", year: "2018", description: "Avec une attaque vive en bouche et sa robe rouge cerise, nous sommes dans un pur Bourgogne avec ses notes de fruits rouges. Finesse et élégance sont au rendez-vous sur des gibiers ou pour profiter de l'été devant le barbecue" ,rating: 3.7)#rouge
wine_23.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_23.save

file = URI.open("https://www.vinatis.com/73704-thickbox_default/senonien-2021-saumur-champigny-la-seigneurie.png")
wine_24 = Wine.create!(name: "Domaine Sénonien, La Seigneurerie", appellation: "Loire, Saumure-Champigny", year: "2021", description: "Un excellent vin Saumurois, fruité, équilibré, couleur rouge intense, un nez de violette, de framboise. Une bouche fruitée et généreuse avec des notes de cerise." ,rating: 4.2)#rouge
wine_24.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_24.save

file = URI.open("https://www.vinatis.com/63312-thickbox_default/clairette-de-die-tradition-cuvee-la-colombe-domaine-des-muttes.png")
wine_25 = Wine.create!(name: "Domaine des Muttes, Cuvée La Colombe", appellation: "Rhône, Clairette de Die", year: "2023", description: "Domaine d'à peine 17ha à su créer cette superbe Clairette de Die Tradition élaborée avec 80% de cépage Muscat et 20% de cépage Clairette blanche.Sa fraicheur, son nez fruité et ses fines bulles vous plongeront dans un voyage olfactif et gustatif !" ,rating: 3.99)#bmanc
wine_25.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_25.save

file = URI.open("https://www.vinatis.com/80898-thickbox_default/les-barricailleurs-blanc-2021.png")
wine_26 = Wine.create!(name: "Les Baricailleurs", appellation: "Bordeaux, ", year: "2021", description: "Tout comme le rouge, cette cuvée Les Barricailleurs blanc est une belle découverte. Un Bordeaux blanc qui offre beaucoup de gourmandise et de fraîcheur. Idéal à l'apéritif, sur des viandes blanches ou encore des fruits de mer, cette bouteille offre un super rapport qualité-prix!" ,rating: 3.2)#rouge
wine_26.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_26.save

file = URI.open("https://www.vinatis.com/74873-thickbox_default/les-perruches-2020-gerald-vallee-domaine-de-la-cotelleraie.png")
wine_27 = Wine.create!(name: "Domaine de la Cotelleraie", appellation: "Loire, Saint-Nicolas de Bourgeuil", year: "2020", description: "Fruité, léger et rond, ce St Nicolas de Bourgueil est une vraie bombe de fruits ! A accorder avec un plateau de fromages !" ,rating: 4.5)#rouge
wine_27.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_27.save

file = URI.open("https://static.wineandco.com/themes/wineandco/images/produits/2/1/2/7/grd21271.jpg")
wine_28 = Wine.create!(name: "Les Parcellaires M.Chapoutier, Cuvée La Nève", appellation: "Rhône, Côte-Rotie", year: "2020", description: "Une dualité entre saveur et richesse ! Cette cuvée la Nève, petite dernière des fameuses sélections Parcellaires de Michel Chapoutier est un modèle de finesse et d'élégance !" ,rating: 5.0)#rouge
wine_28.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_28.save

file = URI.open("https://www.vinatis.com/66801-thickbox_default/anjou-1927-2020-domaine-des-trottieres.png")
wine_29 = Wine.create!(name: "Domaine des Trottières", appellation: "Loire, Anjou", year: "2020", description: "Un plaisir très savoureux. Une superbe structure et une finale réussie. On y goûte la cerise, la mûre et le chasselas. À goûter absolument." ,rating: 3.5)#rouge
wine_29.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_29.save

file = URI.open("https://www.vinatis.com/76973-thickbox_default/clos-cibonne-cuvee-cibonne-tentations-2022.png")
wine_30 = Wine.create!(name: "Clos Cibonne, Cuvée Tentation", appellation: "Côtes de Porvence", year: "2022", description: "Sa couleur est celle d'un rosé délicat. Le nez est fin et discret, sur des notes épicées et de fruits jaunes de type abricot. Le nez évolue sur les fruits exotiques, avec une belle minéralité. La bouche est élégante." ,rating: 3.2)#rosé
wine_30.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_30.save

file = URI.open("https://www.vinatis.com/76581-thickbox_default/les-terrasses-rose-2022-chateau-pesquie.png")
wine_31 = Wine.create!(name: "Chateau Pesquie, Les terrasses Roses", appellation: "Rhône", year: "2022", description: "Le Château Pesquié fait figure de porte-drapeaux dans la région du Mont Ventoux. Les cuvées y sont toujours d'une grande délicatesse et vinifiées d'une main de maître. " ,rating: 4.0)#rosé
wine_31.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_31.save

file = URI.open("https://www.vinatis.com/78168-thickbox_default/chassagne-montrachet-blanc-2021-domaine-bertrand-bachelet.png")
wine_32 = Wine.create!(name: "Domaine Bertrand Bachelet", appellation: "Bourgogne, Chassagne-Montrachet", year: "2021", description: "Ce vin prestigieux se distingue par son équilibre parfait entre fraîcheur et complexité, avec des notes aromatiques subtiles de fruits blancs, de fleurs et de miel qui en font un choix idéal pour les occasions les plus spéciales." ,rating: 4.99)#rouge
wine_32.wine_photo.attach(io: file, filename: "nes.png", content_type: "image/png")
wine_32.save


puts 'creating wine_tags'

WineTag.create!(tag: Tag.find_by(value: "famille"), wine: wine_1 )
WineTag.create!(tag: Tag.find_by(value: "viande"), wine: wine_1 )
WineTag.create!(tag: Tag.find_by(value: "rouge"), wine: wine_1 )
WineTag.create!(tag: Tag.find_by(value: "fort"), wine: wine_1 )
WineTag.create!(tag: Tag.find_by(value: "sulfites"), wine: wine_1 )

WineTag.create!(tag: Tag.find_by(value: "amis"), wine: wine_2 )
WineTag.create!(tag: Tag.find_by(value: "viande"), wine: wine_2 )
WineTag.create!(tag: Tag.find_by(value: "rouge"), wine: wine_2 )
WineTag.create!(tag: Tag.find_by(value: "fort"), wine: wine_2 )
WineTag.create!(tag: Tag.find_by(value: "sulfites"), wine: wine_2 )

WineTag.create!(tag: Tag.find_by(value: "collègues"), wine: wine_3 )
WineTag.create!(tag: Tag.find_by(value: "viande"), wine: wine_3 )
WineTag.create!(tag: Tag.find_by(value: "rouge"), wine: wine_3 )
WineTag.create!(tag: Tag.find_by(value: "fort"), wine: wine_3 )
WineTag.create!(tag: Tag.find_by(value: "sulfites"), wine: wine_3 )

WineTag.create!(tag: Tag.find_by(value: "famille"), wine: wine_4 )
WineTag.create!(tag: Tag.find_by(value: "viande"), wine: wine_4 )
WineTag.create!(tag: Tag.find_by(value: "rouge"), wine: wine_4 )
WineTag.create!(tag: Tag.find_by(value: "fort"), wine: wine_4 )
WineTag.create!(tag: Tag.find_by(value: "sulfites"), wine: wine_4 )

WineTag.create!(tag: Tag.find_by(value: "collègues"), wine: wine_5 )
WineTag.create!(tag: Tag.find_by(value: "poisson"), wine: wine_5 )
WineTag.create!(tag: Tag.find_by(value: "blanc"), wine: wine_5 )
WineTag.create!(tag: Tag.find_by(value: "fruité"), wine: wine_5 )
WineTag.create!(tag: Tag.find_by(value: "bio"), wine: wine_5 )

WineTag.create!(tag: Tag.find_by(value: "famille"), wine: wine_6 )
WineTag.create!(tag: Tag.find_by(value: "poisson"), wine: wine_6 )
WineTag.create!(tag: Tag.find_by(value: "blanc"), wine: wine_6 )
WineTag.create!(tag: Tag.find_by(value: "léger"), wine: wine_6 )
WineTag.create!(tag: Tag.find_by(value: "naturel"), wine: wine_6 )

WineTag.create!(tag: Tag.find_by(value: "amis"), wine: wine_7 )
WineTag.create!(tag: Tag.find_by(value: "poisson"), wine: wine_7 )
WineTag.create!(tag: Tag.find_by(value: "blanc"), wine: wine_7 )
WineTag.create!(tag: Tag.find_by(value: "fruité"), wine: wine_7 )
WineTag.create!(tag: Tag.find_by(value: "bio"), wine: wine_7 )

WineTag.create!(tag: Tag.find_by(value: "amis"), wine: wine_8 )
WineTag.create!(tag: Tag.find_by(value: "végétarien"), wine: wine_8 )
WineTag.create!(tag: Tag.find_by(value: "rosé"), wine: wine_8 )
WineTag.create!(tag: Tag.find_by(value: "fruité"), wine: wine_8 )
WineTag.create!(tag: Tag.find_by(value: "bio"), wine: wine_8 )

WineTag.create!(tag: Tag.find_by(value: "collègues"), wine: wine_9 )
WineTag.create!(tag: Tag.find_by(value: "viande"), wine: wine_9 )
WineTag.create!(tag: Tag.find_by(value: "rosé"), wine: wine_9 )
WineTag.create!(tag: Tag.find_by(value: "fruité"), wine: wine_9 )
WineTag.create!(tag: Tag.find_by(value: "bio"), wine: wine_9 )

WineTag.create!(tag: Tag.find_by(value: "famille"), wine: wine_10 )
WineTag.create!(tag: Tag.find_by(value: "poisson"), wine: wine_10 )
WineTag.create!(tag: Tag.find_by(value: "rosé"), wine: wine_10 )
WineTag.create!(tag: Tag.find_by(value: "léger"), wine: wine_10 )
WineTag.create!(tag: Tag.find_by(value: "bio"), wine: wine_10 )

WineTag.create!(tag: Tag.find_by(value: "collègues"), wine: wine_11 )
WineTag.create!(tag: Tag.find_by(value: "végétarien"), wine: wine_11 )
WineTag.create!(tag: Tag.find_by(value: "rouge"), wine: wine_11 )
WineTag.create!(tag: Tag.find_by(value: "fruité"), wine: wine_11 )
WineTag.create!(tag: Tag.find_by(value: "bio"), wine: wine_11 )

WineTag.create!(tag: Tag.find_by(value: "famille"), wine: wine_12 )
WineTag.create!(tag: Tag.find_by(value: "viande"), wine: wine_12 )
WineTag.create!(tag: Tag.find_by(value: "rouge"), wine: wine_12 )
WineTag.create!(tag: Tag.find_by(value: "léger"), wine: wine_12 )
WineTag.create!(tag: Tag.find_by(value: "sulfites"), wine: wine_12 )

WineTag.create!(tag: Tag.find_by(value: "amis"), wine: wine_13 )
WineTag.create!(tag: Tag.find_by(value: "poisson"), wine: wine_13 )
WineTag.create!(tag: Tag.find_by(value: "blanc"), wine: wine_13 )
WineTag.create!(tag: Tag.find_by(value: "fruité"), wine: wine_13 )
WineTag.create!(tag: Tag.find_by(value: "bio"), wine: wine_13 )

WineTag.create!(tag: Tag.find_by(value: "collègues"), wine: wine_14 )
WineTag.create!(tag: Tag.find_by(value: "végétarien"), wine: wine_14 )
WineTag.create!(tag: Tag.find_by(value: "blanc"), wine: wine_14 )
WineTag.create!(tag: Tag.find_by(value: "fruité"), wine: wine_14 )
WineTag.create!(tag: Tag.find_by(value: "naturel"), wine: wine_14 )

WineTag.create!(tag: Tag.find_by(value: "famille"), wine: wine_15 )
WineTag.create!(tag: Tag.find_by(value: "végétarien"), wine: wine_15 )
WineTag.create!(tag: Tag.find_by(value: "rosé"), wine: wine_15 )
WineTag.create!(tag: Tag.find_by(value: "léger"), wine: wine_15 )
WineTag.create!(tag: Tag.find_by(value: "naturel"), wine: wine_15 )

WineTag.create!(tag: Tag.find_by(value: "amis"), wine: wine_16 )
WineTag.create!(tag: Tag.find_by(value: "viande"), wine: wine_16 )
WineTag.create!(tag: Tag.find_by(value: "rouge"), wine: wine_16 )
WineTag.create!(tag: Tag.find_by(value: "fort"), wine: wine_16 )
WineTag.create!(tag: Tag.find_by(value: "sulfites"), wine: wine_16 )

WineTag.create!(tag: Tag.find_by(value: "collègues"), wine: wine_17 )
WineTag.create!(tag: Tag.find_by(value: "viande"), wine: wine_17 )
WineTag.create!(tag: Tag.find_by(value: "rouge"), wine: wine_17 )
WineTag.create!(tag: Tag.find_by(value: "fruité"), wine: wine_17 )
WineTag.create!(tag: Tag.find_by(value: "sulfites"), wine: wine_17 )

WineTag.create!(tag: Tag.find_by(value: "amis"), wine: wine_18 )
WineTag.create!(tag: Tag.find_by(value: "viande"), wine: wine_18 )
WineTag.create!(tag: Tag.find_by(value: "rouge"), wine: wine_18 )
WineTag.create!(tag: Tag.find_by(value: "fruité"), wine: wine_18 )
WineTag.create!(tag: Tag.find_by(value: "sulfites"), wine: wine_18 )

WineTag.create!(tag: Tag.find_by(value: "famille"), wine: wine_19 )
WineTag.create!(tag: Tag.find_by(value: "viande"), wine: wine_19 )
WineTag.create!(tag: Tag.find_by(value: "rouge"), wine: wine_19 )
WineTag.create!(tag: Tag.find_by(value: "fruité"), wine: wine_19 )
WineTag.create!(tag: Tag.find_by(value: "sulfites"), wine: wine_19 )

WineTag.create!(tag: Tag.find_by(value: "amis"), wine: wine_20 )
WineTag.create!(tag: Tag.find_by(value: "poisson"), wine: wine_20 )
WineTag.create!(tag: Tag.find_by(value: "blanc"), wine: wine_20 )
WineTag.create!(tag: Tag.find_by(value: "léger"), wine: wine_20 )
WineTag.create!(tag: Tag.find_by(value: "sulfites"), wine: wine_20 )

WineTag.create!(tag: Tag.find_by(value: "famille"), wine: wine_21 )
WineTag.create!(tag: Tag.find_by(value: "poisson"), wine: wine_21 )
WineTag.create!(tag: Tag.find_by(value: "blanc"), wine: wine_21 )
WineTag.create!(tag: Tag.find_by(value: "léger"), wine: wine_21 )
WineTag.create!(tag: Tag.find_by(value: "naturel"), wine: wine_21 )

WineTag.create!(tag: Tag.find_by(value: "amis"), wine: wine_22 )
WineTag.create!(tag: Tag.find_by(value: "végétarien"), wine: wine_22 )
WineTag.create!(tag: Tag.find_by(value: "rosé"), wine: wine_22 )
WineTag.create!(tag: Tag.find_by(value: "fruité"), wine: wine_22 )
WineTag.create!(tag: Tag.find_by(value: "sulfites"), wine: wine_22 )

WineTag.create!(tag: Tag.find_by(value: "famille"), wine: wine_23 )
WineTag.create!(tag: Tag.find_by(value: "viande"), wine: wine_23 )
WineTag.create!(tag: Tag.find_by(value: "rouge"), wine: wine_23 )
WineTag.create!(tag: Tag.find_by(value: "fort"), wine: wine_23 )
WineTag.create!(tag: Tag.find_by(value: "sulfites"), wine: wine_23 )

WineTag.create!(tag: Tag.find_by(value: "collègues"), wine: wine_24 )
WineTag.create!(tag: Tag.find_by(value: "viande"), wine: wine_24 )
WineTag.create!(tag: Tag.find_by(value: "rouge"), wine: wine_24 )
WineTag.create!(tag: Tag.find_by(value: "fruité"), wine: wine_24 )
WineTag.create!(tag: Tag.find_by(value: "bio"), wine: wine_24 )

WineTag.create!(tag: Tag.find_by(value: "amis"), wine: wine_25 )
WineTag.create!(tag: Tag.find_by(value: "viande"), wine: wine_25 )
WineTag.create!(tag: Tag.find_by(value: "blanc"), wine: wine_25 )
WineTag.create!(tag: Tag.find_by(value: "fruité"), wine: wine_25 )
WineTag.create!(tag: Tag.find_by(value: "bio"), wine: wine_25 )

WineTag.create!(tag: Tag.find_by(value: "collègues"), wine: wine_26 )
WineTag.create!(tag: Tag.find_by(value: "poisson"), wine: wine_26 )
WineTag.create!(tag: Tag.find_by(value: "blanc"), wine: wine_26 )
WineTag.create!(tag: Tag.find_by(value: "léger"), wine: wine_26 )
WineTag.create!(tag: Tag.find_by(value: "bio"), wine: wine_26 )

WineTag.create!(tag: Tag.find_by(value: "famille"), wine: wine_27 )
WineTag.create!(tag: Tag.find_by(value: "viande"), wine: wine_27 )
WineTag.create!(tag: Tag.find_by(value: "rouge"), wine: wine_27 )
WineTag.create!(tag: Tag.find_by(value: "fruité"), wine: wine_27 )
WineTag.create!(tag: Tag.find_by(value: "bio"), wine: wine_27 )

WineTag.create!(tag: Tag.find_by(value: "collègues"), wine: wine_28 )
WineTag.create!(tag: Tag.find_by(value: "viande"), wine: wine_28 )
WineTag.create!(tag: Tag.find_by(value: "rouge"), wine: wine_28 )
WineTag.create!(tag: Tag.find_by(value: "fruité"), wine: wine_28 )
WineTag.create!(tag: Tag.find_by(value: "bio"), wine: wine_28 )

WineTag.create!(tag: Tag.find_by(value: "amis"), wine: wine_29 )
WineTag.create!(tag: Tag.find_by(value: "viande"), wine: wine_29 )
WineTag.create!(tag: Tag.find_by(value: "rouge"), wine: wine_29 )
WineTag.create!(tag: Tag.find_by(value: "fruité"), wine: wine_29 )
WineTag.create!(tag: Tag.find_by(value: "bio"), wine: wine_29 )

WineTag.create!(tag: Tag.find_by(value: "famille"), wine: wine_30 )
WineTag.create!(tag: Tag.find_by(value: "viande"), wine: wine_30 )
WineTag.create!(tag: Tag.find_by(value: "rosé"), wine: wine_30 )
WineTag.create!(tag: Tag.find_by(value: "léger"), wine: wine_30 )
WineTag.create!(tag: Tag.find_by(value: "bio"), wine: wine_30 )

WineTag.create!(tag: Tag.find_by(value: "famille"), wine: wine_31 )
WineTag.create!(tag: Tag.find_by(value: "poisson"), wine: wine_31 )
WineTag.create!(tag: Tag.find_by(value: "rosé"), wine: wine_31 )
WineTag.create!(tag: Tag.find_by(value: "fruité"), wine: wine_31 )
WineTag.create!(tag: Tag.find_by(value: "sulfites"), wine: wine_31 )

WineTag.create!(tag: Tag.find_by(value: "collègues"), wine: wine_32 )
WineTag.create!(tag: Tag.find_by(value: "poisson"), wine: wine_32 )
WineTag.create!(tag: Tag.find_by(value: "blanc"), wine: wine_32 )
WineTag.create!(tag: Tag.find_by(value: "léger"), wine: wine_32 )
WineTag.create!(tag: Tag.find_by(value: "bio"), wine: wine_32 )
