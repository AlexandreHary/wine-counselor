puts 'creatings offers'

  file = URI.open("https://medias.oas.io/medias/2019/03/20/12/wineandco-o.png")
  offer_1 = Offer.create!(user_id: User.first.id, wine: Wine.offset(9).first, url: "https://www.wineandco.com/domaine-casanova-gris-rose-52091-fr-eur-fr.html", quantity: 6, price: 6, address: "67 Quai des Chartrons, 33300 Bordeaux", delivery: Date.today + 10.days)
  offer_1.offer_photo.attach(io: file, filename: "wineandco.png", content_type: "image/png")
  offer_1.save
