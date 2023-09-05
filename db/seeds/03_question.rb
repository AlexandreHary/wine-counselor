puts 'creating questions'
question_1 = Question.create!(title: "1. Pour quelle occasion souhaitez-vous un vin ?", position: 1, last: false)
question_2 = Question.create!(title: "2. Quel type de repas allez-vous avoir ? ", position: 2, last: false)
question_3 = Question.create!(title: "3. Quelle couleur de vin aimez-vous ?", position: 3, last: false)
question_4 = Question.create!(title: "4. Quel gout préférez-vous ? - Leger / fort ? – fruité / tanique", position: 4, last: false)
question_5 = Question.create!(title: "5. Voulez-vous un vin bio, un vin naturel ou un vin sans sulfites (végan) ?" , position: 5, last: true)
