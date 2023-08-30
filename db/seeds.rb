Chatroom.destroy_all
User.destroy_all

puts 'creating'

user_1 = User.create!(first_name: "Alex", last_name: "HARY", email: "alexandre@winecounselor.com", password: "azerty1")
user_2 = User.create!(first_name: "Joris", last_name: "CHENNA", email: "joris@winecounselor.com", password: "azerty2")
user_3 = User.create!(first_name: "Enola", last_name: "LUKASIEWICZ", email: "enola@winecounselor.com", password: "azerty3")

chatroom = Chatroom.create!(user: user_1)
chatroom = Chatroom.create!(user: user_2)
chatroom = Chatroom.create!(user: user_3)

question_1 = Question.create!(question: "1. Quelle occasion ?")
question_2 = Question.create!(question: "2. Quel type de repas ? ")
question_3 = Question.create!(question: "3. Quelle couleur de vin ? (couleur)")
question_4 = Question.create!(question: "4. Quel gout ? - Leger / fort ? – fruité / tanique")
question_5 = Question.create!(question: "5. Voulez vous des bouteilles de même cru ou des cru différents ?")
question_6 = Question.create!(question: "6. Combien de personnes ?")
question_7 = Question.create!(question: "7. france /appelation / indication / vin local, région?")
question_8 = Question.create!(question: "8. Quel est votre budget total ? – applicable à toutes les bouteilles ? oui – non")
question_9= Question.create!(question: "9. Quelle quantité ?")
question_10 = Question.create!(question: "10. Temps de livraison ?")
question_11 = Question.create!(question: "11. Vin reconnu, ou petit vigneron Attention vin bio ? origine – recoltant – peut importe ?")
puts 'finished'
