puts 'creating chatroom'
chatroom_1 = Chatroom.create!(user: User.first)
chatroom_2 = Chatroom.create!(user: User.second)
chatroom_3 = Chatroom.create!(user: User.third)
