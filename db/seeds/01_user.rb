puts 'creating users'

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1694083771/01A66069-CD05-452E-B205-9BF863580787_1_201_a_aywoq2.jpg")
user_1 = User.create!(first_name: "Alex", last_name: "HARY", email: "alexandre@winecounselor.com", password: "azerty1", role: 1)
user_1.profile_picture.attach(io: file, filename: "AlexandreHary.png", content_type: "Alexandre Hary")
user_1.save

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1694083765/FFFE7283-3C49-43CF-A32F-C4F19714C834_1_201_a_eer8g3.jpg")
user_2 = User.create!(first_name: "Joris", last_name: "CHENNA", email: "joris@winecounselor.com", password: "azerty2", role: 0)
user_2.profile_picture.attach(io: file, filename: "JorisChenna.png", content_type: "Joris Chenna")
user_2.save

file = URI.open("https://res.cloudinary.com/dpjincxmo/image/upload/v1694083770/907F4E1B-9915-4B6D-82D4-A563DFB3D508_1_201_a_vme5hu.jpg")
user_3 = User.create!(first_name: "Enola", last_name: "LUKASIEWICZ", email: "enola@winecounselor.com", password: "azerty3", role: 0)
user_3.profile_picture.attach(io: file, filename: "EnolaLUKASIEWICZ.png", content_type: "Enola LUKASIEWICZ")
user_3.save

file = URI.open("https://fr.web.img6.acsta.net/pictures/16/05/20/15/38/373052.jpg")
user_4 = User.create!(first_name: "Victoria", last_name: "PARA", email: "vica@winecounselor.com", password: "azerty", role: 1)
user_4.profile_picture.attach(io: file, filename: "VictoriaLPARA.png", content_type: "Victoria PARA")
user_4.save

file = URI.open("https://www.parismatch.com/lmnr/var/pm/public/media/image/Emma-Watson_0.jpg?VersionId=RC8sSswLrmMQFNdbRU7FRE3E80WtYdls")
user_5 = User.create!(first_name: "Emma", last_name: "MAMA", email: "emma@winecounselor.com", password: "azerty", role: 1)
user_4.profile_picture.attach(io: file, filename: "EmmaPARA.png", content_type: "Emma MAMA")
user_5.save

user_6 = User.create!(first_name: "Pablo", last_name: "PAB", email: "pablo@winecounselor.com", password: "azerty", role: 1)
user_6.save
user_7 = User.create!(first_name: "Armi", last_name: "PIAMONTE", email: "armi@winecounselor.com", password: "azerty", role: 1)
user_7.save

user_8 = User.create!(first_name: "Barbara", last_name: "PAB", email: "barbara@winecounselor.com", password: "azerty", role: 1)
user_8.save

user_9 = User.create!(first_name: "Laura", last_name: "LOLO", email: "laura@winecounselor.com", password: "azerty", role: 1)
user_9.save
