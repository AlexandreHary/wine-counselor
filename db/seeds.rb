Chatroom.destroy_all
User.destroy_all

puts 'creating'

user_1 = User.create!(first_name: "Alex", last_name: "HARY", email: "alexandre@winecounselor.com", password: "azerty1")
user_2 = User.create!(first_name: "Joris", last_name: "CHENNA", email: "joris@winecounselor.com", password: "azerty2")
user_3 = User.create!(first_name: "Enola", last_name: "LUKASIEWICZ", email: "enola@winecounselor.com", password: "azerty3")

chatroom = Chatroom.create!(user: user_1)
chatroom = Chatroom.create!(user: user_2)
chatroom = Chatroom.create!(user: user_3)

question_1 = Question.create!(title: "Quelle occasion ?", position: 1, last: false)
question_2 = Question.create!(title: "Quel type de repas ? ", position: 2, last: false)
question_3 = Question.create!(title: "Quelle couleur de vin ?", position: 3, last: false)
question_4 = Question.create!(title: "Quel gout ? - Leger / fort ? fruité / tanique ?", position: 4, last: false)
question_5 = Question.create!(title: "Voulez-vous un vin bio, vin naturel, vin sans sulfites", position: 5, last: true)

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
