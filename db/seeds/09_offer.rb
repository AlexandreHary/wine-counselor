puts 'creatings offers'

file = URI.open("https://medias.oas.io/medias/2019/03/20/12/wineandco-o.png")
offer_1 = Offer.create!(user_id: User.first.id, wine: Wine.offset(9).first, url: "https://www.wineandco.com/domaine-casanova-gris-rose-52091-fr-eur-fr.html",
                        quantity: 6, price: 6, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 10.days)
offer_1.offer_photo.attach(io: file, filename: "wineandco.png", content_type: "image/png")
offer_1.save

file = URI.open("https://medias.oas.io/medias/2019/03/20/12/wineandco-o.png")
offer_2 = Offer.create!(user_id: User.first.id, wine: Wine.offset(9).first, url: "https://www.wineandco.com/chateau-galeteau-saint-emilion-2016-41165-fr-eur-fr.html",
                        quantity: 4, price: 5, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 10.days)
offer_2.offer_photo.attach(io: file, filename: "wineandco.png", content_type: "image/png")
offer_2.save

file = URI.open("https://medias.oas.io/medias/2019/03/20/12/wineandco-o.png")
offer_3 = Offer.create!(user_id: User.first.id, wine: Wine.offset(9).first, url: "https://www.wineandco.com/clos-des-lunes-cuvee-lune-d-argent-2016-18352-fr-eur-fr.html",
                        quantity: 5, price: 7, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 10.days)
offer_3.offer_photo.attach(io: file, filename: "wineandco.png", content_type: "image/png")
offer_3.save

file = URI.open("https://medias.oas.io/medias/2019/03/20/12/wineandco-o.png")
offer_4 = Offer.create!(user_id: User.first.id, wine: Wine.offset(9).first, url: "https://www.wineandco.com/chateau-de-respide-rouge-2019-51486-fr-eur-fr.html",
                        quantity: 3, price: 10, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 10.days)
offer_4.offer_photo.attach(io: file, filename: "wineandco.png", content_type: "image/png")
offer_4.save
