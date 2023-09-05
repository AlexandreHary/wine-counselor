puts 'creating options'

option_1_q1 = Option.create!(question: Question.first, verbose: 'Je souhaite un vin pour un événement en', small: 'famille')
option_2_q1 = Option.create!(question: Question.first, verbose: 'Je souhaite un vin pour un événement entre', small: 'amis')
option_3_q1 = Option.create!(question: Question.first, verbose: 'Je souhaite un vin pour un événement avec des', small: 'collègues')

option_1_q2 = Option.create!(question: Question.second, verbose: 'Nous allons manger de la', small: 'viande')
option_2_q2 = Option.create!(question: Question.second, verbose: 'Nous allons manger du', small: 'poisson')
option_3_q2 = Option.create!(question: Question.second, verbose: 'Nous allons manger un repas complètement', small: 'végétarien')

option_1_q3 = Option.create!(question: Question.third, verbose: 'Plutôt du', small: 'rouge')
option_2_q3 = Option.create!(question: Question.third, verbose: 'Plutôt du', small: 'blanc')
option_3_q3 = Option.create!(question: Question.third, verbose: 'Plutôt du', small: 'rosé')

option_1_q4 = Option.create!(question: Question.fourth, verbose: 'Je préfére un vin', small: 'fort')
option_2_q4 = Option.create!(question: Question.fourth, verbose: 'Je préfére un vin', small: 'léger')
option_3_q4 = Option.create!(question: Question.fourth, verbose: 'Je préfére un vin', small: 'fruité')

option_1_q5 = Option.create!(question: Question.fifth, verbose: 'Je préfére un vin', small: 'naturel')
option_2_q5 = Option.create!(question: Question.fifth, verbose: 'Je préfére un vin', small: 'bio')
option_3_q5 = Option.create!(question: Question.fifth, verbose: 'Je préfére un vin sans', small: 'sulfites')

puts 'creating tags'

tag_1 = Tag.create!(category: Question.first.title, value: option_1_q1.small)
tag_2 = Tag.create!(category: Question.first.title, value: option_2_q1.small)
tag_3 = Tag.create!(category: Question.first.title, value: option_3_q1.small)
tag_4 = Tag.create!(category: Question.second.title, value: option_1_q2.small)
tag_5 = Tag.create!(category: Question.second.title, value: option_2_q2.small)
tag_6 = Tag.create!(category: Question.second.title, value: option_3_q2.small)
tag_7 = Tag.create!(category: Question.third.title, value: option_1_q3.small)
tag_8 = Tag.create!(category: Question.third.title, value: option_2_q3.small)
tag_9 = Tag.create!(category: Question.third.title, value: option_3_q3.small)
tag_10 = Tag.create!(category: Question.fourth.title, value: option_1_q4.small)
tag_11 = Tag.create!(category: Question.fourth.title, value: option_2_q4.small)
tag_12 = Tag.create!(category: Question.fourth.title, value: option_3_q4.small)
tag_13 = Tag.create!(category: Question.fifth.title, value: option_1_q5.small)
tag_14 = Tag.create!(category: Question.fifth.title, value: option_2_q5.small)
tag_15 = Tag.create!(category: Question.fifth.title, value: option_3_q5.small)

puts 'creating option_tags'

option_tag_1 = OptionTag.create!(tag: tag_1, option: option_1_q1 )
option_tag_1 = OptionTag.create!(tag: tag_2, option: option_2_q1 )
option_tag_1 = OptionTag.create!(tag: tag_3, option: option_3_q1 )

option_tag_2 = OptionTag.create!(tag: tag_4, option: option_1_q2 )
option_tag_2 = OptionTag.create!(tag: tag_5, option: option_2_q2 )
option_tag_2 = OptionTag.create!(tag: tag_6, option: option_3_q2 )

option_tag_3 = OptionTag.create!(tag: tag_7, option: option_1_q3 )
option_tag_3 = OptionTag.create!(tag: tag_8, option: option_2_q3 )
option_tag_3 = OptionTag.create!(tag: tag_9, option: option_3_q3 )

option_tag_4 = OptionTag.create!(tag: tag_10, option: option_1_q4 )
option_tag_4 = OptionTag.create!(tag: tag_11, option: option_2_q4 )
option_tag_4 = OptionTag.create!(tag: tag_12, option: option_3_q4 )

option_tag_5 = OptionTag.create!(tag: tag_13, option: option_1_q5 )
option_tag_5 = OptionTag.create!(tag: tag_14, option: option_2_q5 )
option_tag_5 = OptionTag.create!(tag: tag_15, option: option_3_q5 )


puts 'creating answers'

Answer.create!(chatroom: Chatroom.first, option: option_1_q1 )
Answer.create!(chatroom: Chatroom.first, option: option_1_q2 )
Answer.create!(chatroom: Chatroom.first, option: option_1_q3 )
Answer.create!(chatroom: Chatroom.first, option: option_1_q4 )
Answer.create!(chatroom: Chatroom.first, option: option_1_q5 )


Answer.create!(chatroom: Chatroom.second, option: option_2_q1 )
Answer.create!(chatroom: Chatroom.second, option: option_2_q2 )
Answer.create!(chatroom: Chatroom.second, option: option_2_q3 )
Answer.create!(chatroom: Chatroom.second, option: option_2_q4 )
Answer.create!(chatroom: Chatroom.second, option: option_2_q5 )

Answer.create!(chatroom: Chatroom.third, option: option_3_q1 )
Answer.create!(chatroom: Chatroom.third, option: option_3_q2 )
Answer.create!(chatroom: Chatroom.third, option: option_3_q3 )
Answer.create!(chatroom: Chatroom.third, option: option_3_q4 )
Answer.create!(chatroom: Chatroom.third, option: option_3_q5 )

puts 'Answers created successfully'

# # 3 tags lié à 1 vin
