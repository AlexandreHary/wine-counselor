Answer.destroy_all
WineTag.destroy_all
Offer.destroy_all
Wine.destroy_all
Tag.destroy_all
OptionTag.destroy_all
Option.destroy_all
Question.destroy_all
Chatroom.destroy_all
User.destroy_all

puts 'Loading the seeds'


# load the correct seeds file for our Rails environment
load(Rails.root.join('db', 'seeds', "01_user.rb"))
load(Rails.root.join('db', 'seeds', "02_chatroom.rb"))
load(Rails.root.join('db', 'seeds', "03_question.rb"))
load(Rails.root.join('db', 'seeds', "04_option_and_tag.rb"))
load(Rails.root.join('db', 'seeds', "06_wine_and_winetag.rb"))
load(Rails.root.join('db', 'seeds', "09_offer.rb"))
puts 'finished'
