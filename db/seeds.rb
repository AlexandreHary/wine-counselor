Chatroom.destroy_all
User.destroy_all

puts 'creating'

user_1 = User.create!(first_name: "Alex", last_name: "HARY", email: "alexandre@winecounselor.com", password: "azerty1")
user_2 = User.create!(first_name: "Joris", last_name: "CHENNA", email: "joris@winecounselor.com", password: "azerty2")
user_3 = User.create!(first_name: "Enola", last_name: "LUKASIEWICZ", email: "enola@winecounselor.com", password: "azerty3")

chatroom = Chatroom.create!(user: user_1)
chatroom = Chatroom.create!(user: user_2)
chatroom = Chatroom.create!(user: user_3)

puts 'finished'
