puts 'creatings offers'
victoria = User.find_by(first_name: 'Victoria')
emma = User.find_by(first_name: 'Emma')
pablo = User.find_by(first_name: 'Pablo')
alex = User.find_by(first_name: 'Alex')
laura = User.find_by(first_name: 'Laura')
barbara =  User.find_by(first_name: 'Barbara')
#Chateau peyrabon
file = URI.open("https://medias.oas.io/medias/2019/03/20/12/wineandco-o.png")
offer_1_1 = Offer.create!(user: victoria, wine: Wine.offset(1).first, url: "https://static3.wineandco.com/themes/wineandco/images/produits/1/7/4/9/grd17490.jpg",
quantity: 48, price: 12.90, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 10.days)
offer_1_1.offer_photo.attach(io: file, filename: "wineandco.png", content_type: "image/png")
offer_1_1.save

file = URI.open("https://parrainmalin.fr/wp-content/uploads/2021/01/Parrainage-Vinatis-ParrainMalin.png")
offer_1_2 = Offer.create!(user: emma, wine: Wine.offset(1).first, url: "https://www.vinatis.com/43596-thickbox_default/chateau-peyrabon-2016-cru-bourgeois-superieur.png",
quantity: 36, price: 13.50, address: "6 Av. du Pré de Challes, 74940 Annecy-le-Vieux", delivery: Date.today + 12.days)
offer_1_2.offer_photo.attach(io: file, filename: "vinatis.png", content_type: "image/png")
offer_1_2.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/7/72/Millesima_logo.jpg")
offer_1_3 = Offer.create!(user: pablo, wine: Wine.offset(1).first, url: "https://www.millesima.fr/chateau-peyrabon-2016-e-cb-1.html?at_medium=sl&at_campaign=PMax-Top-Marques&at_platform=google&at_creation=&at_adtype=pla_with_promotion&at_term=1593%2F16%2FE%2FCB%2F1&gclid=CjwKCAjw6eWnBhAKEiwADpnw9slA2nBysjYFeeFjAJIvniixKiOND5q6HpJslSZsJ52Uhm3bW4ZDFxoCRCIQAvD_BwE",
quantity: 120, price: 12.67, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 10.days)
offer_1_3.offer_photo.attach(io: file, filename: "millesima.png", content_type: "image/png")
offer_1_3.save

#Chateau Fief Lagrange
file = URI.open("https://www.cavissima.com/blog/wp-content/uploads/2016/09/logo_pourfondblanc.png")
offer_2_1 = Offer.create!(user: victoria, wine: Wine.offset(2).first, url: "https://www.cavissima.com/les-fiefs-de-lagrange-saint-julien-2016-7778.html",
quantity: 12, price: 32.00, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 14.days)
offer_2_1.offer_photo.attach(io: file, filename: "cavissima.png", content_type: "image/png")
offer_2_1.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/7/72/Millesima_logo.jpg")
offer_2_2 = Offer.create!(user: emma, wine: Wine.offset(2).first, url: "https://www.millesima.fr/les-fiefs-de-lagrange-2016.html",
quantity: 36, price: 13.50, address: "6 Av. du Pré de Challes, 74940 Annecy-le-Vieux", delivery: Date.today + 12.days)
offer_2_2.offer_photo.attach(io: file, filename: "millesima.png", content_type: "image/png")
offer_2_2.save

file = URI.open("https://images.vivino.com/merchants/originals/p1dd13880000ma5.jpg")
offer_2_3 = Offer.create!(user: pablo, wine: Wine.offset(2).first, url: "https://www.leverrecanaille.com/bordeaux/1185-les-fiefs-de-lagrange-2016-second-vin-saint-julien.html?gclid=Cj0KCQjwxuCnBhDLARIsAB-cq1oYV7NCFPpAYG3kLqg0-j2k6X4E-0DZY_ix5o8YB1Pc1SSYu9bxCv8aAttKEALw_wcB",
quantity: 3, price: 31.00, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 3.days)
offer_2_3.offer_photo.attach(io: file, filename: "leverrecanaille.png", content_type: "image/png")
offer_2_3.save

#Chateau La Dominique
file = URI.open("https://medias.oas.io/medias/2019/03/20/12/wineandco-o.png")
offer_3_1 = Offer.create!(user: victoria, wine: Wine.offset(3).first, url: "https://www.wineandco.com/chateau-la-dominique-2016-17527-fr-eur-fr.html?gclid=Cj0KCQjwxuCnBhDLARIsAB-cq1ou3j2wsq5CZTF3TYHnENKYJpYIntQsdIWkz_pKduIsCQdd0j78qtoaApK4EALw_wcB",
quantity: 48, price: 69.00, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 10.days)
offer_3_1.offer_photo.attach(io: file, filename: "wineandco.png", content_type: "image/png")
offer_3_1.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/7/72/Millesima_logo.jpg")
offer_3_2 = Offer.create!(user: emma, wine: Wine.offset(3).first, url: "https://www.millesima.fr/chateau-la-dominique-2015-f-cb-1.html?at_medium=sl&at_campaign=DSA-All&at_platform=google&at_creation=&at_variant=&at_network=search&at_term=&gclid=Cj0KCQjwxuCnBhDLARIsAB-cq1qv1KHRdg_y8V2G26ngrlyokboHRkyYINUw1yI_QdOsN6DOlMAttPcaAvsxEALw_wcB",
quantity: 36, price: 64.17, address: "6 Av. du Pré de Challes, 74940 Annecy-le-Vieux", delivery: Date.today + 12.days)
offer_3_2.offer_photo.attach(io: file, filename: "millesima.png", content_type: "image/png")
offer_3_2.save

file = URI.open("https://www.marcovasco.fr/blog/wp-content/uploads/2017/04/Logo-Twil.jpg")
offer_3_3 = Offer.create!(user: pablo, wine: Wine.offset(3).first, url: "https://www.twil.fr/france/bordeaux/saint-emilion-grand-cru/chateau-la-dominique-wine-16779.html?utm_source=guidehachette&utm_medium=cpc&utm_campaign=fluxcatalogue&utm_term=id_produit_59814#328560",
quantity: 3, price: 31.00, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 3.days)
offer_3_3.offer_photo.attach(io: file, filename: "twil.png", content_type: "image/png")
offer_3_3.save

#Domaine Bienheureux
file = URI.open("https://medias.oas.io/medias/2019/03/20/12/wineandco-o.png")
offer_4_1 = Offer.create!(user: victoria, wine: Wine.offset(4).first, url: "https://www.wineandco.com/domaine-du-bienheureux-chateauneuf-du-pape-rouge-2020-47137-fr-eur-fr.html",
quantity: 38, price: 29.00, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 10.days)
offer_4_1.offer_photo.attach(io: file, filename: "wineandco.png", content_type: "image/png")
offer_4_1.save

file = URI.open("https://images2.vinadea.com/img/vinadea-logo-1647616257.jpg")
offer_4_2 = Offer.create!(user: emma, wine: Wine.offset(4).first, url: "https://www.vinadea.com/vins-aoc-chateauneuf-du-pape-rouge-blanc/26-domaine-du-bienheureux-2020-chateauneuf-du-pape-rouge-2020-75-cl.html",
quantity: 36, price: 35.00, address: "6 Av. du Pré de Challes, 74940 Annecy-le-Vieux", delivery: Date.today + 12.days)
offer_4_2.offer_photo.attach(io: file, filename: "vinadea.png", content_type: "image/png")
offer_4_2.save

file = URI.open("https://italianwinesandfood.com/wp-content/uploads/2021/10/Vivino.jpg")
offer_4_3 = Offer.create!(user: pablo, wine: Wine.offset(4).first, url: "https://www.vivino.com/FR/fr/domaine-du-bienheureux-chateauneuf-du-pape/w/6261955",
quantity: 3, price: 31.00, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 3.days)
offer_4_3.offer_photo.attach(io: file, filename: "vivino.png", content_type: "image/png")
offer_4_3.save

#Paul jaboulet ainé crozes
file = URI.open("https://medias.oas.io/medias/2019/03/20/12/wineandco-o.png")
offer_5_1 = Offer.create!(user: alex, wine: Wine.offset(5).first, url: "https://www.wineandco.com/domaine-fouassier-sancerre-les-grands-champs-2021-52084-fr-eur-fr.html",
quantity: 39, price: 22.90, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 10.days)
offer_5_1.offer_photo.attach(io: file, filename: "wineandco.png", content_type: "image/png")
offer_5_1.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/7/72/Millesima_logo.jpg")
offer_5_2 = Offer.create!(user: emma, wine: Wine.offset(5).first, url: "https://www.vindebacchus.com/1290-domaine-fouassier-les-grands-champs.html",
quantity: 60, price: 20.19, address: "6 Av. du Pré de Challes, 74940 Annecy-le-Vieux", delivery: Date.today + 12.days)
offer_5_2.offer_photo.attach(io: file, filename: "vindebacchus.png", content_type: "image/png")
offer_5_2.save

file = URI.open("https://cdn2.les-caves.fr/img/logo_les_caves.png?1600418271")
offer_5_3 = Offer.create!(user: pablo, wine: Wine.offset(5).first, url: "https://www.les-caves.fr/fr/vin-du-rhone-crozes-hermitage/2723-croze-hermitage-les-jalets.html",
quantity: 12, price: 15.83, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 3.days)
offer_5_3.offer_photo.attach(io: file, filename: "lescaves.png", content_type: "image/png")
offer_5_3.save


#Domaine Fouassier
file = URI.open("https://medias.oas.io/medias/2019/03/20/12/wineandco-o.png")
offer_6_1 = Offer.create!(user: alex, wine: Wine.offset(6).first, url: "https://www.wineandco.com/domaine-fouassier-sancerre-les-grands-champs-2021-52084-fr-eur-fr.html",
quantity: 29, price: 22.90, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 10.days)
offer_6_1.offer_photo.attach(io: file, filename: "wineandco.png", content_type: "image/png")
offer_6_1.save

file = URI.open("https://vins-etonnants.com/cdn/shop/files/Image_e2b43d71-c18c-4201-b157-d591447f95df.png?height=628&pad_color=FFFFFF&v=1672827921&width=1200")
offer_6_2 = Offer.create!(user: laura, wine: Wine.offset(6).first, url: "https://vins-etonnants.com/products/sancerre-les-grands-champs-2021",
quantity: 12, price: 22.90, address: "6 Av. du Pré de Challes, 74940 Annecy-le-Vieux", delivery: Date.today + 4.days)
offer_6_2.offer_photo.attach(io: file, filename: "vinsetonnant.png", content_type: "image/png")
offer_6_2.save

file = URI.open("https://bacchusvin.fr/wp-content/uploads/2017/12/Bacchus-Vin-logo_1-300x123.png")
offer_6_3 = Offer.create!(user: barbara, wine: Wine.offset(6).first, url: "https://www.vindebacchus.com/1290-domaine-fouassier-les-grands-champs.html",
quantity: 12, price: 20.70, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 10.days)
offer_6_3.offer_photo.attach(io: file, filename: "vindebacchus.png", content_type: "image/png")
offer_6_3.save

#Chateau G guiraud
file = URI.open("https://medias.oas.io/medias/2019/03/20/12/wineandco-o.png")
offer_7_1 = Offer.create!(user: laura, wine: Wine.offset(7).first, url: "https://www.wineandco.com/g-de-guiraud-2018-21324-fr-eur-fr.html",
quantity: 48, price: 12.60, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 10.days)
offer_7_1.offer_photo.attach(io: file, filename: "wineandco.png", content_type: "image/png")
offer_7_1.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/7/72/Millesima_logo.jpg")
offer_7_2 = Offer.create!(user: alex, wine: Wine.offset(7).first, url: "https://www.millesima.fr/le-g-de-chateau-guiraud-2018.html",
quantity: 2, price: 14.50, address: "6 Av. du Pré de Challes, 74940 Annecy-le-Vieux", delivery: Date.today + 12.days)
offer_7_2.offer_photo.attach(io: file, filename: "millesima.png", content_type: "image/png")
offer_7_2.save

file = URI.open("https://images.vivino.com/merchants/originals/p1dd13880000ma5.jpg")
offer_7_3 = Offer.create!(user: barbara, wine: Wine.offset(7).first, url: "https://www.vivino.com/FR/fr/chateau-guiraud-le-g-de-guiraud-bordeaux-blanc-sec/w/1173607?year=2018",
quantity: 48, price: 12.60, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 5.days)
offer_7_3.offer_photo.attach(io: file, filename: "vindebacchus.png", content_type: "image/png")
offer_7_3.save

#Guiraud
file = URI.open("https://medias.oas.io/medias/2019/03/20/12/wineandco-o.png")
offer_8_1 = Offer.create!(user: alex, wine: Wine.offset(8).first, url: "https://www.wineandco.com/g-de-guiraud-2018-21324-fr-eur-fr.html",
quantity: 48, price: 12.60, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 10.days)
offer_8_1.offer_photo.attach(io: file, filename: "wineandco.png", content_type: "image/png")
offer_8_1.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/7/72/Millesima_logo.jpg")
offer_8_2 = Offer.create!(user: emma, wine: Wine.offset(8).first, url: "https://www.millesima.fr/le-g-de-chateau-guiraud-2018.html",
quantity: 2, price: 14.50, address: "6 Av. du Pré de Challes, 74940 Annecy-le-Vieux", delivery: Date.today + 12.days)
offer_8_2.offer_photo.attach(io: file, filename: "millesima.png", content_type: "image/png")
offer_8_2.save

file = URI.open("https://images.vivino.com/merchants/originals/p1dd13880000ma5.jpg")
offer_8_3 = Offer.create!(user: victoria, wine: Wine.offset(8).first, url: "https://www.vivino.com/FR/fr/chateau-guiraud-le-g-de-guiraud-bordeaux-blanc-sec/w/1173607?year=2018",
quantity: 48, price: 12.60, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 5.days)
offer_8_3.offer_photo.attach(io: file, filename: "vindebacchus.png", content_type: "image/png")
offer_8_3.save



#vins : casanova rosé
file = URI.open("https://medias.oas.io/medias/2019/03/20/12/wineandco-o.png")
offer_9_1 = Offer.create!(user: alex, wine: Wine.offset(9).first, url: "https://www.wineandco.com/domaine-casanova-gris-rose-52091-fr-eur-fr.html",
                        quantity: 6, price: 6, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 10.days)
offer_9_1.offer_photo.attach(io: file, filename: "wineandco.png", content_type: "image/png")
offer_9_1.save

file = URI.open("https://parrainmalin.fr/wp-content/uploads/2021/01/Parrainage-Vinatis-ParrainMalin.png")
offer_9_2 = Offer.create!(user: emma, wine: Wine.offset(9).first, url: "https://www.vinatis.com/id-20586-domaine-casanova-gris-rose?utm_source=google&utm_medium=cpc&utm_campaign=pmax_20_80&r=googlemerchant&ids=perfmax_20_80&gclid=Cj0KCQjwxuCnBhDLARIsAB-cq1qTgYJoczQJtE-BNt_M2hAIFfp1xejlCBsgVCDQbfR3gDIEs0EMZeUaAjfKEALw_wcB",
                        quantity: 4, price: 5, address: " 6 Av. du Pré de Challes, 74940 Annecy-le-Vieux", delivery: Date.today + 12.days)
offer_9_2.offer_photo.attach(io: file, filename: "vinatis.png", content_type: "image/png")
offer_9_2.save

file = URI.open("https://www.hachette-vins.shop/_themes/partner/hachette-theme/bundles/wac/img/logo.png")
offer_9_3 = Offer.create!(user: pablo, wine: Wine.offset(9).first, url: "https://www.hachette-vins.shop/domaine-casanova-gris-rose-2020-41633-fr-eur-fr.html",
                        quantity: 0, price: 6.90, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 20.days)
offer_9_3.offer_photo.attach(io: file, filename: "wineandco.png", content_type: "image/png")
offer_9_3.save
