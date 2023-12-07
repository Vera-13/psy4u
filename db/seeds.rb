require "open-uri"
Chatroom.destroy_all
Review.destroy_all
DocLang.destroy_all
Language.destroy_all
User.destroy_all
Symptom.destroy_all
puts "Cleaned database..."

puts "creating symptoms"
sym1 = Symptom.create!(name: "Anxiety")
sym2 = Symptom.create!(name: "Depression")

sym3 = Symptom.create!(name: "OCD")

sym4 = Symptom.create!(name: "Trauma")
sym6 = Symptom.create!(name: "ADHD")
sym5 = Symptom.create!(name: "PTSD")

sym7 = Symptom.create!(name: "Eating Disorders")

sym8 = Symptom.create!(name: "Couple Therapy")

puts "creating patients"
file = URI.open("https://st2.depositphotos.com/1017228/12452/i/600/depositphotos_124520052-stock-photo-portrait-of-a-young-happy.jpg")
pat1 = User.create(first_name: "Georgina", last_name: "Fay", email: "georgina.may@test.com", address: "Pont du Chêne 317, Bizet, 7783, Belgium", password: "123456", is_doctor: false)
pat1.photo.attach(io: file, filename: "#{pat1.first_name}.png", content_type: "image/png")
puts "created #{pat1.first_name}"

file = URI.open("https://st.depositphotos.com/1594308/3681/i/600/depositphotos_36818041-stock-photo-pensive-businessman.jpg")
pat2 = User.create(first_name: "Michael", last_name: "Fay", email: "michael.may@test.com", address: "Pont du Chêne 317, Bizet, 7783, Belgium", password: "123456", is_doctor: false)
pat2.photo.attach(io: file, filename: "#{pat2.first_name}.png", content_type: "image/png")
puts "created #{pat2.first_name}"

file = URI.open("https://st2.depositphotos.com/2931363/6569/i/600/depositphotos_65699901-stock-photo-black-man-keeping-arms-crossed.jpg")
pat3 = User.create(first_name: "Cathrine", last_name: "Fay", email: "cathrine.may@test.com", address: "Pont du Chêne 317, Bizet, 7783, Belgium", password: "123456", is_doctor: false)
pat3.photo.attach(io: file, filename: "#{pat3.first_name}.png", content_type: "image/png")
puts "created #{pat3.first_name}"

file = URI.open("https://st4.depositphotos.com/13193658/30811/i/600/depositphotos_308117604-stock-photo-attractive-smiling-asian-woman-denim.jpg")
pat4 = User.create(first_name: "Lara", last_name: "Fay", email: "lara.may@test.com", address: "Pont du Chêne 317, Bizet, 7783, Belgium", password: "123456", is_doctor: false)
pat4.photo.attach(io: file, filename: "#{pat4.first_name}.png", content_type: "image/png")
puts "created #{pat4.first_name}"

file = URI.open("https://st4.depositphotos.com/1000824/24973/i/600/depositphotos_249739908-stock-photo-happy-beautiful-brunette-woman.jpg")
pat5 = User.create(first_name: "Mary-Anne", last_name: "Fay", email: "mary_anne.may@test.com", address: "Pont du Chêne 317, Bizet, 7783, Belgium", password: "123456", is_doctor: false)
pat5.photo.attach(io: file, filename: "#{pat5.first_name}.png", content_type: "image/png")
puts "created #{pat5.first_name}"

file = URI.open("https://st4.depositphotos.com/1000824/24973/i/600/depositphotos_249739908-stock-photo-happy-beautiful-brunette-woman.jpg")
pat6 = User.create(first_name: "Vera", last_name: "Ciocan", email: "vera.ciocan@gmail.com", address: "Rue Lesbroussart 36, Bruxelles, 1070, Belgium", password: "123456", is_doctor: false)
pat6.photo.attach(io: file, filename: "#{pat6.first_name}.png", content_type: "image/png")
puts "created #{pat6.first_name}"

file = URI.open("https://st4.depositphotos.com/1000824/24973/i/600/depositphotos_249739908-stock-photo-happy-beautiful-brunette-woman.jpg")
pat7 = User.create(first_name: "Laura", last_name: "Naderimehr", email: "laura.n@gmail.com", address: "Rue Lesbroussart 36, Bruxelles, 1070, Belgium", password: "123456", is_doctor: false)
pat7.photo.attach(io: file, filename: "#{pat7.first_name}.png", content_type: "image/png")
puts "created #{pat7.first_name}"

file = URI.open("https://st4.depositphotos.com/1000824/24973/i/600/depositphotos_249739908-stock-photo-happy-beautiful-brunette-woman.jpg")
pat8 = User.create(first_name: "Maria", last_name: "Martinov", email: "maria.m@gmail.com", address: "Rue Lesbroussart 36, Bruxelles, 1070, Belgium", password: "123456", is_doctor: false)
pat8.photo.attach(io: file, filename: "#{pat8.first_name}.png", content_type: "image/png")
puts "created #{pat8.first_name}"

file = URI.open("https://st4.depositphotos.com/1000824/24973/i/600/depositphotos_249739908-stock-photo-happy-beautiful-brunette-woman.jpg")
pat9 = User.create(first_name: "Lizzy", last_name: "Martinov", email: "lizzy.m@gmail.com", address: "Rue Lesbroussart 36, Bruxelles, 1070, Belgium", password: "123456", is_doctor: false)
pat9.photo.attach(io: file, filename: "#{pat9.first_name}.png", content_type: "image/png")
puts "created #{pat9.first_name}"

file = URI.open("https://st.depositphotos.com/1594308/3681/i/600/depositphotos_36818041-stock-photo-pensive-businessman.jpg")
pat10 = User.create(first_name: "Liam", last_name: "Martinov", email: "liam.m@gmail.com", address: "Rue Lesbroussart 36, Bruxelles, 1070, Belgium", password: "123456", is_doctor: false)
pat10.photo.attach(io: file, filename: "#{pat10.first_name}.png", content_type: "image/png")
puts "created #{pat10.first_name}"




puts "creating doctors"
file = URI.open("https://st4.depositphotos.com/12982378/30881/i/450/depositphotos_308819686-stock-photo-positive-woman-pointing-finger-isolated.jpg")
user1 = User.new(first_name: "Angela", last_name: "May", email: "angela.may@gmail.com", address: "Rue Lesbroussart 36, Bruxelles, 1070, Belgium", password: "123456", is_doctor: true, do_online: true, price_session: "75", phone_nr: "+32 765 135 206", about: "Welcome to my corner of insight and understanding. As a dedicated psychologist, I'm committed to guiding individuals through their unique journeys of self-discovery and healing. With a blend of empathy, expertise, and a passion for mental wellness, I strive to create a safe, nurturing space where my clients can explore, grow, and thrive. Join me as we navigate the complexities of the human mind and embark on a transformative path toward well-being and fulfillment.")
user1.photo.attach(io: file, filename: "#{user1.first_name}.png", content_type: "image/png")
user1.save!
puts "created #{user1.first_name}"

file = URI.open("https://st3.depositphotos.com/9881890/13879/i/600/depositphotos_138797442-stock-photo-smiling-young-woman.jpg")
user2 = User.new(first_name: "Maria", last_name: "Dali", email: "maria.dali@gmail.com", address: "Boulevard Jamar 19, Bruxelles, 1070, Belgium", password: "123456", is_doctor: true, do_online: false, price_session: "55", phone_nr: "+32 675 935 006", about: "Dedicated psychologist with a passion for empowering individuals to navigate life's challenges and discover their inner strengths. Specializing in PTSD and ADHD, I provide compassionate guidance and evidence-based strategies to support clients in fostering personal growth, resilience, and mental well-being.")
user2.photo.attach(io: file, filename: "#{user2.first_name}.png", content_type: "image/png")
user2.save!
puts "created #{user2.first_name}"

file = URI.open("https://st2.depositphotos.com/2931363/6569/i/600/depositphotos_65699901-stock-photo-black-man-keeping-arms-crossed.jpg")
user3 = User.new(first_name: "Mark", last_name: "Reynolds", email: "mark.reynolds@gmail.com", address: "Rue du Broeck 97, Bruxelles, 1070, Belgium", password: "123456", is_doctor: true, do_online: true, price_session: "65",phone_nr: "+32 567 183 409", about: "Specializing in anxiety disorders, I am dedicated to guiding individuals through personalized treatment plans tailored to alleviate anxiety's grip on daily life. Utilizing cognitive-behavioral techniques and mindfulness practices, I empower clients to reclaim control, fostering a path toward a calmer, more fulfilling life.")
user3.photo.attach(io: file, filename: "#{user3.first_name}.png", content_type: "image/png")
user3.save!

file = URI.open("https://st.depositphotos.com/2590737/2940/i/600/depositphotos_29407191-stock-photo-successful-elegant-smiling-mature-casual.jpg")
puts "created #{user3.first_name}"
user4 = User.create(first_name: "Giuseppe", last_name: "Ruggiero", email: "giuseppe.ruggiero@gmail.com", address: "Rue Royale 316, Bruxelles,  1210, Belgium", password: "123456", is_doctor: true, do_online: false, price_session: "60", phone_nr: "+32 445 365 900", about: "Passionate about the holistic well-being of individuals facing chronic illness, I specialize in health psychology. By integrating psychological principles with health management strategies, I support patients in coping with the emotional and lifestyle challenges accompanying their conditions. My goal is to enhance quality of life and foster resilience amidst health-related adversities.")
user4.photo.attach(io: file, filename: "#{user4.first_name}.png", content_type: "image/png")
puts "created #{user4.first_name}"

file = URI.open("https://st4.depositphotos.com/12985790/25235/i/600/depositphotos_252354162-stock-photo-excited-curly-african-american-girl.jpg")
user5 = User.create(first_name: "Abby", last_name: "Ash", email: "abby.ash@gmail.com", address: "Rue de Chambery 82, Bruxelles,  1210, Belgium", password: "Rue Royale 200, Bruxelles,  1210, Belgium", is_doctor: true, do_online: true, price_session: "70", phone_nr: "+32 008 765 837", about: "Compassionate child psychologist committed to nurturing the mental and emotional development of young minds. Through a blend of play therapy, family dynamics understanding, and specialized interventions, I help children and adolescents flourish in their unique environments, fostering resilience and emotional well-being.")
user5.photo.attach(io: file, filename: "#{user5.first_name}.png", content_type: "image/png")
puts "created #{user5.first_name}"


file = URI.open("https://st4.depositphotos.com/1017228/30877/i/600/depositphotos_308773206-stock-photo-portrait-of-a-handsome-mature.jpg")
user6 = User.new(first_name: "Leone", last_name: "Claser", email: "leone.claser@gmail.com", address: "Boulevard du Triomphe 172, Bruxelles,  1210, Belgium", password: "123456", is_doctor: true, do_online: false, price_session: "75", phone_nr: "+32 706 065 266", about: "Welcome to my corner of insight and understanding. As a dedicated psychologist, I'm committed to guiding individuals through their unique journeys of self-discovery and healing. With a blend of empathy, expertise, and a passion for mental wellness, I strive to create a safe, nurturing space where my clients can explore, grow, and thrive. Join me as we navigate the complexities of the human mind and embark on a transformative path toward well-being and fulfillment.")
user6.photo.attach(io: file, filename: "#{user6.first_name}.png", content_type: "image/png")
user6.save!
puts "created #{user6.first_name}"

file = URI.open("https://st2.depositphotos.com/1662991/9124/i/600/depositphotos_91247756-stock-photo-man-with-a-beard-sitting.jpg")
user7 = User.new(first_name: "Thierry", last_name: "Dupont", email: "thierry.dupont@gmail.com", address: "Chaussee de Vleurgat 119, Bruxelles, 1000, Belgium", password: "123456", is_doctor: true, do_online: true, price_session: "75", phone_nr: "+32 505 535 205", about: "Welcome to my corner of insight and understanding. As a dedicated psychologist, I'm committed to guiding individuals through their unique journeys of self-discovery and healing. With a blend of empathy, expertise, and a passion for mental wellness, I strive to create a safe, nurturing space where my clients can explore, grow, and thrive. Join me as we navigate the complexities of the human mind and embark on a transformative path toward well-being and fulfillment.")
user7.photo.attach(io: file, filename: "#{user7.first_name}.png", content_type: "image/png")
user7.save!
puts "created #{user7.first_name}"

file = URI.open("https://st.depositphotos.com/1662991/52203/i/600/depositphotos_522034584-stock-photo-handsome-latin-man-glasses-casual.jpg")
user8 = User.new(first_name: "Lucas", last_name: "Rave", email: "lucas.rave@gmail.com", address: "	Chaussee de Boondael 332, Ixelles, 1050, Belgium", password: "123456", is_doctor: true, do_online: false, price_session: "75", phone_nr: "+32 745 435 246", about: "Welcome to my corner of insight and understanding. As a dedicated psychologist, I'm committed to guiding individuals through their unique journeys of self-discovery and healing. With a blend of empathy, expertise, and a passion for mental wellness, I strive to create a safe, nurturing space where my clients can explore, grow, and thrive. Join me as we navigate the complexities of the human mind and embark on a transformative path toward well-being and fulfillment.")
user8.photo.attach(io: file, filename: "#{user8.first_name}.png", content_type: "image/png")
user8.save!
puts "created #{user8.first_name}"

file = URI.open("https://st.depositphotos.com/1075946/3531/i/600/depositphotos_35318825-stock-photo-mature-handsome-guy.jpg")
user9 = User.new(first_name: "Mathew", last_name: "Stabel", email: "mathew.stabel@gmail.com", address: "Avenue Adolphe Buyl 8, Ixelles, 1050, Belgium", password: "123456", is_doctor: true, do_online: true, price_session: "75", phone_nr: "+32 205 235 226", about: "Welcome to my corner of insight and understanding. As a dedicated psychologist, I'm committed to guiding individuals through their unique journeys of self-discovery and healing. With a blend of empathy, expertise, and a passion for mental wellness, I strive to create a safe, nurturing space where my clients can explore, grow, and thrive. Join me as we navigate the complexities of the human mind and embark on a transformative path toward well-being and fulfillment.")
user9.photo.attach(io: file, filename: "#{user9.first_name}.png", content_type: "image/png")
user9.save!
puts "created #{user9.first_name}"

file = URI.open("https://st3.depositphotos.com/1037987/15097/i/600/depositphotos_150975580-stock-photo-portrait-of-businesswoman-in-office.jpg")
user10 = User.new(first_name: "Anna", last_name: "Shore", email: "anna.shore@gmail.com", address: "Chaussee de Saint-Job 334, Uccle, 1180, Belgium", password: "123456", is_doctor: true, do_online: false, price_session: "75", phone_nr: "+32 305 935 806", about: "Welcome to my corner of insight and understanding. As a dedicated psychologist, I'm committed to guiding individuals through their unique journeys of self-discovery and healing. With a blend of empathy, expertise, and a passion for mental wellness, I strive to create a safe, nurturing space where my clients can explore, grow, and thrive. Join me as we navigate the complexities of the human mind and embark on a transformative path toward well-being and fulfillment.")
user10.photo.attach(io: file, filename: "#{user10.first_name}.png", content_type: "image/png")
user10.save!
puts "created #{user10.first_name}"

file = URI.open("https://st.depositphotos.com/1037987/56609/i/600/depositphotos_566096356-stock-photo-head-shoulders-portrait-senior-woman.jpg")
user11 = User.new(first_name: "Christine", last_name: "Smith", email: "christine.smith@gmail.com", address: "Fernand Cocqplein 10, Elsene, 1050, Belgium", password: "123456", is_doctor: true, do_online: true, price_session: "75", phone_nr: "+32 455 065 276", about: "Welcome to my corner of insight and understanding. As a dedicated psychologist, I'm committed to guiding individuals through their unique journeys of self-discovery and healing. With a blend of empathy, expertise, and a passion for mental wellness, I strive to create a safe, nurturing space where my clients can explore, grow, and thrive. Join me as we navigate the complexities of the human mind and embark on a transformative path toward well-being and fulfillment.")
user11.photo.attach(io: file, filename: "#{user11.first_name}.png", content_type: "image/png")
user11.save!
puts "created #{user11.first_name}"

file = URI.open("https://st.depositphotos.com/1010710/3382/i/600/depositphotos_33821721-stock-photo-man-sitting-by-pool.jpg")
user12 = User.new(first_name: "Arthur", last_name: "Dutoit", email: "arthur.dutoit@gmail.com", address: "Rue Malibran 71, Ixelles, 1050, Belgium", password: "123456", is_doctor: true, do_online: false, price_session: "75", phone_nr: "+32 985 035 200", about: "Welcome to my corner of insight and understanding. As a dedicated psychologist, I'm committed to guiding individuals through their unique journeys of self-discovery and healing. With a blend of empathy, expertise, and a passion for mental wellness, I strive to create a safe, nurturing space where my clients can explore, grow, and thrive. Join me as we navigate the complexities of the human mind and embark on a transformative path toward well-being and fulfillment.")
user12.photo.attach(io: file, filename: "#{user12.first_name}.png", content_type: "image/png")
user12.save!
puts "created #{user12.first_name}"

file = URI.open("https://st2.depositphotos.com/13185108/46304/i/600/depositphotos_463047140-stock-photo-curly-woman-smiling-looking-camera.jpg")
user13 = User.new(first_name: "Erika", last_name: "Ramirez", email: "erica.ramirez@gmail.com", address: "Avenue Louise 493, Bruxelles, 1050, Belgium", password: "123456", is_doctor: true, do_online: true, price_session: "75", phone_nr: "+32 985 035 200", about: "Welcome to my corner of insight and understanding. As a dedicated psychologist, I'm committed to guiding individuals through their unique journeys of self-discovery and healing. With a blend of empathy, expertise, and a passion for mental wellness, I strive to create a safe, nurturing space where my clients can explore, grow, and thrive. Join me as we navigate the complexities of the human mind and embark on a transformative path toward well-being and fulfillment.")
user13.photo.attach(io: file, filename: "#{user13.first_name}.png", content_type: "image/png")
user13.save!
puts "created #{user13.first_name}"

file = URI.open("https://st.depositphotos.com/1075946/3664/i/600/depositphotos_36647475-stock-photo-attractive-mature-woman.jpg")
user14 = User.new(first_name: "Elli-May", last_name: "Farell", email: "elli-may.farell@gmail.com", address: "Rue Neuve 123, Bruxelles, 1000, Belgium", password: "123456", is_doctor: true, do_online: false, price_session: "75", phone_nr: "+32 985 035 200", about: "Welcome to my corner of insight and understanding. As a dedicated psychologist, I'm committed to guiding individuals through their unique journeys of self-discovery and healing. With a blend of empathy, expertise, and a passion for mental wellness, I strive to create a safe, nurturing space where my clients can explore, grow, and thrive. Join me as we navigate the complexities of the human mind and embark on a transformative path toward well-being and fulfillment.")
user14.photo.attach(io: file, filename: "#{user14.first_name}.png", content_type: "image/png")
user14.save!
puts "created #{user14.first_name}"

file = URI.open("https://st2.depositphotos.com/1037987/10268/i/600/depositphotos_102688536-stock-photo-man-relaxing-in-countryside.jpg")
user15 = User.new(first_name: "Fynn", last_name: "Powel", email: "fynn.powel@gmail.com", address: "Rue de l'Enseignement 81, Bruxelles, 1000, Belgium", password: "123456", is_doctor: true, do_online: true, price_session: "75", phone_nr: "+32 985 035 200", about: "Welcome to my corner of insight and understanding. As a dedicated psychologist, I'm committed to guiding individuals through their unique journeys of self-discovery and healing. With a blend of empathy, expertise, and a passion for mental wellness, I strive to create a safe, nurturing space where my clients can explore, grow, and thrive. Join me as we navigate the complexities of the human mind and embark on a transformative path toward well-being and fulfillment.")
user15.photo.attach(io: file, filename: "#{user15.first_name}.png", content_type: "image/png")
user15.save!
puts "created #{user15.first_name}"

file = URI.open("https://st2.depositphotos.com/2309453/7422/i/600/depositphotos_74221797-stock-photo-happy-adult-woman-on-couch.jpg")
user16 = User.new(first_name: "Daisy", last_name: "Bolton", email: "daisy.bolton@gmail.com", address: "	Sint-Bernardusstraat 107, Bruxelles, 1000, Belgium", password: "123456", is_doctor: true, do_online: false, price_session: "75", phone_nr: "+32 985 035 200", about: "Welcome to my corner of insight and understanding. As a dedicated psychologist, I'm committed to guiding individuals through their unique journeys of self-discovery and healing. With a blend of empathy, expertise, and a passion for mental wellness, I strive to create a safe, nurturing space where my clients can explore, grow, and thrive. Join me as we navigate the complexities of the human mind and embark on a transformative path toward well-being and fulfillment.")
user16.photo.attach(io: file, filename: "#{user16.first_name}.png", content_type: "image/png")
user16.save!
puts "created #{user16.first_name}"

file = URI.open("https://static8.depositphotos.com/1377527/936/i/600/depositphotos_9366290-stock-photo-attractive-man-portrait.jpg")
user17 = User.new(first_name: "Rocco", last_name: "Warner", email: "rocco.warner@gmail.com", address: "Chaussee de Dieleghem 114, Jette, 1090, Belgium", password: "123456", is_doctor: true, do_online: true, price_session: "75", phone_nr: "+32 985 035 200", about: "Welcome to my corner of insight and understanding. As a dedicated psychologist, I'm committed to guiding individuals through their unique journeys of self-discovery and healing. With a blend of empathy, expertise, and a passion for mental wellness, I strive to create a safe, nurturing space where my clients can explore, grow, and thrive. Join me as we navigate the complexities of the human mind and embark on a transformative path toward well-being and fulfillment.")
user17.photo.attach(io: file, filename: "#{user17.first_name}.png", content_type: "image/png")
user17.save!
puts "created #{user17.first_name}"

file = URI.open("https://st5.depositphotos.com/62628780/65239/i/600/depositphotos_652390382-stock-photo-retirement-doesnt-get-any-better.jpg")
user18 = User.new(first_name: "Saira", last_name: "Roth", email: "saira.roth@gmail.com", address: "Rue de Vergnies 27, Ixelles, 1050, Belgium", password: "123456", is_doctor: true,do_online: false, price_session: "75", phone_nr: "+32 985 035 200", about: "Welcome to my corner of insight and understanding. As a dedicated psychologist, I'm committed to guiding individuals through their unique journeys of self-discovery and healing. With a blend of empathy, expertise, and a passion for mental wellness, I strive to create a safe, nurturing space where my clients can explore, grow, and thrive. Join me as we navigate the complexities of the human mind and embark on a transformative path toward well-being and fulfillment.")
user18.photo.attach(io: file, filename: "#{user18.first_name}.png", content_type: "image/png")
user18.save!
puts "created #{user18.first_name}"

file = URI.open("https://st5.depositphotos.com/2208684/67364/i/600/depositphotos_673645288-stock-photo-portrait-middle-aged-woman-blonde.jpg")
user19 = User.new(first_name: "Chloe", last_name: "Farley", email: "chloe.farley@gmail.com", address: "Elsensesteenweg 284, Bruxelles, 1050, Belgium", password: "123456", is_doctor: true, do_online: true, price_session: "75", phone_nr: "+32 985 035 200", about: "Welcome to my corner of insight and understanding. As a dedicated psychologist, I'm committed to guiding individuals through their unique journeys of self-discovery and healing. With a blend of empathy, expertise, and a passion for mental wellness, I strive to create a safe, nurturing space where my clients can explore, grow, and thrive. Join me as we navigate the complexities of the human mind and embark on a transformative path toward well-being and fulfillment.")
user19.photo.attach(io: file, filename: "#{user19.first_name}.png", content_type: "image/png")
user19.save!
puts "created #{user19.first_name}"

file = URI.open("https://st5.depositphotos.com/2208684/62427/i/600/depositphotos_624271900-stock-photo-portrait-beautiful-long-haired-woman.jpg")
user20 = User.new(first_name: "Automn", last_name: "Melton", email: "automn.melton@gmail.com", address: "	Rue du Vieux Marche aux Grains 6, Bruxelles, 1000, Belgium", password: "123456", is_doctor: true, do_online: false, price_session: "75", phone_nr: "+32 985 035 200", about: "Welcome to my corner of insight and understanding. As a dedicated psychologist, I'm committed to guiding individuals through their unique journeys of self-discovery and healing. With a blend of empathy, expertise, and a passion for mental wellness, I strive to create a safe, nurturing space where my clients can explore, grow, and thrive. Join me as we navigate the complexities of the human mind and embark on a transformative path toward well-being and fulfillment.")
user20.photo.attach(io: file, filename: "#{user20.first_name}.png", content_type: "image/png")
user20.save!
puts "created #{user20.first_name}"

Chatroom.create(patient_id: 7, doctor_id: 1)
puts "creating reviews"
Review.create!(patient_id: pat1.id, doctor_id: user1.id, comment: "Thank you for the support and your help.", rating: "4.0")
Review.create!(patient_id: pat2.id, doctor_id: user1.id, comment: "Exceptional psychologist!.", rating: "5.0")
Review.create!(patient_id: pat5.id, doctor_id: user1.id, comment: "Outstanding psychologist, their expertise and compassion have been instrumental in my journey toward a healthier state of mind.", rating: "5.0")
Review.create!(patient_id: pat7.id, doctor_id: user1.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "5.0")
Review.create!(patient_id: pat3.id, doctor_id: user1.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "5.0")
Review.create!(patient_id: pat4.id, doctor_id: user1.id, comment: "I highly recommend #{user1.first_name} for anyone seeking a dedicated professional who not only understands the complexities of mental health but also genuinely cares about their clients' well-being.", rating: "5.0")

Review.create!(patient_id: pat3.id, doctor_id: user2.id, comment: "I highly recommend their services for anyone seeking genuine support to mental well-being", rating: "3.0")
Review.create!(patient_id: pat4.id, doctor_id: user2.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "3.0")
Review.create!(patient_id: pat5.id, doctor_id: user2.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "4.0")
Review.create!(patient_id: pat6.id, doctor_id: user2.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "4.0")
Review.create!(patient_id: pat7.id, doctor_id: user2.id, comment: "Outstanding psychologist—professional, empathetic, and transformative.", rating: "4.0")
Review.create!(patient_id: pat10.id, doctor_id: user2.id, comment: "Incredible psychologist - their nuanced approach and genuine empathy helped me navigate challenges, fostering a sense of self-awareness and inner strength.", rating: "4.0")

Review.create!(patient_id: pat10.id, doctor_id: user3.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "5.0")
Review.create!(patient_id: pat4.id, doctor_id: user3.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "5.0")
Review.create!(patient_id: pat2.id, doctor_id: user3.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "5.0")
Review.create!(patient_id: pat5.id, doctor_id: user3.id, comment: "Thank you for the support and your help.", rating: "5.0")
Review.create!(patient_id: pat1.id, doctor_id: user3.id, comment: "Outstanding psychologist—professional, empathetic, and transformative.", rating: "4.0")

Review.create!(patient_id: pat2.id, doctor_id: user4.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "3.0")
Review.create!(patient_id: pat4.id, doctor_id: user4.id, comment: "Thank you for the support and your help.", rating: "3.0")
Review.create!(patient_id: pat10.id, doctor_id: user4.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "3.0")
Review.create!(patient_id: pat9.id, doctor_id: user4.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "4.0")
Review.create!(patient_id: pat8.id, doctor_id: user4.id, comment: "Incredible psychologist - their nuanced approach and genuine empathy helped me navigate challenges, fostering a sense of self-awareness and inner strength.", rating: "3.0")
Review.create!(patient_id: pat6.id, doctor_id: user4.id, comment: "A skilled professional with a remarkable ability to provide clarity amidst chaos, this psychologist's guidance instilled confidence and a renewed sense of purpose.", rating: "4.0")
Review.create!(patient_id: pat3.id, doctor_id: user4.id, comment: "Outstanding psychologist—professional, empathetic, and transformative.", rating: "4.0")

Review.create!(patient_id: pat10.id, doctor_id: user5.id, comment: "Outstanding psychologist—professional, empathetic, and transformative.", rating: "5.0")
Review.create!(patient_id: pat9.id, doctor_id: user5.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "5.0")
Review.create!(patient_id: pat8.id, doctor_id: user5.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "5.0")
Review.create!(patient_id: pat7.id, doctor_id: user5.id, comment: "Incredible psychologist - their nuanced approach and genuine empathy helped me navigate challenges, fostering a sense of self-awareness and inner strength.", rating: "4.0")
Review.create!(patient_id: pat6.id, doctor_id: user5.id, comment: "A skilled professional with a remarkable ability to provide clarity amidst chaos, this psychologist's guidance instilled confidence and a renewed sense of purpose.", rating: "3.0")
Review.create!(patient_id: pat5.id, doctor_id: user5.id, comment: "Outstanding psychologist—professional, empathetic, and transformative.", rating: "5.0")
Review.create!(patient_id: pat4.id, doctor_id: user5.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "4.0")
Review.create!(patient_id: pat1.id, doctor_id: user5.id, comment: "Thank you for the support and your help.", rating: "4.0")

Review.create!(patient_id: pat9.id, doctor_id: user6.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "5.0")
Review.create!(patient_id: pat8.id, doctor_id: user6.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "4.0")
Review.create!(patient_id: pat7.id, doctor_id: user6.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "5.0")
Review.create!(patient_id: pat6.id, doctor_id: user6.id, comment: "Incredible psychologist - their nuanced approach and genuine empathy helped me navigate challenges, fostering a sense of self-awareness and inner strength.", rating: "4.0")
Review.create!(patient_id: pat5.id, doctor_id: user6.id, comment: "A skilled professional with a remarkable ability to provide clarity amidst chaos, this psychologist's guidance instilled confidence and a renewed sense of purpose.", rating: "5.0")
Review.create!(patient_id: pat4.id, doctor_id: user6.id, comment: "A true beacon of support, this psychologist's insightful advice and empathetic nature helped me navigate complexities, enabling profound personal growth.", rating: "4.0")
Review.create!(patient_id: pat3.id, doctor_id: user6.id, comment: "Exceptional psychologist!.", rating: "5.0")

Review.create!(patient_id: pat5.id, doctor_id: user7.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "5.0")
Review.create!(patient_id: pat4.id, doctor_id: user7.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "4.0")
Review.create!(patient_id: pat1.id, doctor_id: user7.id, comment: "Incredible psychologist - their nuanced approach and genuine empathy helped me navigate challenges, fostering a sense of self-awareness and inner strength.", rating: "5.0")
Review.create!(patient_id: pat2.id, doctor_id: user7.id, comment: "Thank you for the support and your help.", rating: "5.0")
Review.create!(patient_id: pat10.id, doctor_id: user7.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "5.0")
Review.create!(patient_id: pat6.id, doctor_id: user7.id, comment: "Outstanding psychologist—professional, empathetic, and transformative.", rating: "4.0")
Review.create!(patient_id: pat3.id, doctor_id: user7.id, comment: "Exceptional psychologist!.", rating: "4.0")

Review.create!(patient_id: pat5.id, doctor_id: user8.id, comment: "Thank you for the support and your help.", rating: "4.0")
Review.create!(patient_id: pat3.id, doctor_id: user8.id, comment: "Exceptional psychologist - compassionate, insightful, and immensely supportive throughout my journey towards healing.", rating: "5.0")
Review.create!(patient_id: pat2.id, doctor_id: user8.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "5.0")
Review.create!(patient_id: pat1.id, doctor_id: user8.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "4.0")
Review.create!(patient_id: pat10.id, doctor_id: user8.id, comment: "Incredible psychologist - their nuanced approach and genuine empathy helped me navigate challenges, fostering a sense of self-awareness and inner strength.", rating: "5.0")
Review.create!(patient_id: pat8.id, doctor_id: user8.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "4.0")
Review.create!(patient_id: pat9.id, doctor_id: user8.id, comment: "A skilled professional with a remarkable ability to provide clarity amidst chaos, this psychologist's guidance instilled confidence and a renewed sense of purpose.", rating: "3.0")

Review.create!(patient_id: pat4.id, doctor_id: user9.id, comment: "An outstanding psychologist whose empathy and expertise truly made a positive difference in my life.", rating: "4.0")
Review.create!(patient_id: pat3.id, doctor_id: user9.id, comment: "Exceptional psychologist!.", rating: "4.0")
Review.create!(patient_id: pat2.id, doctor_id: user9.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "3.0")
Review.create!(patient_id: pat1.id, doctor_id: user9.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "5.0")
Review.create!(patient_id: pat10.id, doctor_id: user9.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "3.0")
Review.create!(patient_id: pat9.id, doctor_id: user9.id, comment: "Incredible psychologist - their nuanced approach and genuine empathy helped me navigate challenges, fostering a sense of self-awareness and inner strength.", rating: "4.0")
Review.create!(patient_id: pat5.id, doctor_id: user9.id, comment: "Thank you for the support and your help.", rating: "4.0")

Review.create!(patient_id: pat2.id, doctor_id: user10.id, comment: "An outstanding psychologist whose empathy and expertise truly made a positive difference in my life.", rating: "4.0")
Review.create!(patient_id: pat1.id, doctor_id: user10.id, comment: "Thank you for the support and your help.", rating: "4.0")
Review.create!(patient_id: pat3.id, doctor_id: user10.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "4.0")
Review.create!(patient_id: pat5.id, doctor_id: user10.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "5.0")
Review.create!(patient_id: pat4.id, doctor_id: user10.id, comment: "Incredible psychologist - their nuanced approach and genuine empathy helped me navigate challenges, fostering a sense of self-awareness and inner strength.", rating: "4.0")
Review.create!(patient_id: pat7.id, doctor_id: user10.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "3.0")
Review.create!(patient_id: pat6.id, doctor_id: user10.id, comment: "Exceptional psychologist!.", rating: "4.0")
Review.create!(patient_id: pat10.id, doctor_id: user10.id, comment: "Highly skilled and empathetic, this psychologist provided invaluable support, guiding me towards greater mental clarity.", rating: "4.0")

Review.create!(patient_id: pat5.id, doctor_id: user11.id, comment: "Incredible psychologist - their nuanced approach and genuine empathy helped me navigate challenges, fostering a sense of self-awareness and inner strength.", rating: "4.0")
Review.create!(patient_id: pat3.id, doctor_id: user11.id, comment: "A skilled professional with a remarkable ability to provide clarity amidst chaos, this psychologist's guidance instilled confidence and a renewed sense of purpose.", rating: "5.0")
Review.create!(patient_id: pat4.id, doctor_id: user11.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "4.0")
Review.create!(patient_id: pat2.id, doctor_id: user11.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "5.0")
Review.create!(patient_id: pat1.id, doctor_id: user11.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "4.0")
Review.create!(patient_id: pat6.id, doctor_id: user11.id, comment: "Exceptional psychologist!.", rating: "4.0")
Review.create!(patient_id: pat7.id, doctor_id: user11.id, comment: "Highly skilled and empathetic, this psychologist provided invaluable support, guiding me towards greater mental clarity.", rating: "4.0")
Review.create!(patient_id: pat10.id, doctor_id: user11.id, comment: "I highly recommend their services for anyone seeking genuine support to mental well-being", rating: "4.0")
Review.create!(patient_id: pat9.id, doctor_id: user11.id, comment: "An outstanding psychologist whose empathy and expertise truly made a positive difference in my life.", rating: "4.0")

Review.create!(patient_id: pat1.id, doctor_id: user12.id, comment: "Exceptional psychologist!.", rating: "4.0")
Review.create!(patient_id: pat2.id, doctor_id: user12.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "4.0")
Review.create!(patient_id: pat3.id, doctor_id: user12.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "3.0")
Review.create!(patient_id: pat4.id, doctor_id: user12.id, comment: "Thank you for the support and your help.", rating: "4.0")
Review.create!(patient_id: pat5.id, doctor_id: user12.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "5.0")
Review.create!(patient_id: pat6.id, doctor_id: user12.id, comment: "Incredible psychologist - their nuanced approach and genuine empathy helped me navigate challenges, fostering a sense of self-awareness and inner strength.", rating: "5.0")
Review.create!(patient_id: pat7.id, doctor_id: user12.id, comment: "An outstanding psychologist whose empathy and expertise truly made a positive difference in my life.", rating: "4.0")

Review.create!(patient_id: pat4.id, doctor_id: user13.id, comment: "Thank you for the support and your help.", rating: "4.0")
Review.create!(patient_id: pat5.id, doctor_id: user13.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "4.0")
Review.create!(patient_id: pat6.id, doctor_id: user13.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "5.0")
Review.create!(patient_id: pat7.id, doctor_id: user13.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "4.0")
Review.create!(patient_id: pat8.id, doctor_id: user13.id, comment: "Exceptional psychologist!.", rating: "4.0")
Review.create!(patient_id: pat9.id, doctor_id: user13.id, comment: "Highly skilled and empathetic, this psychologist provided invaluable support, guiding me towards greater mental clarity.", rating: "5.0")
Review.create!(patient_id: pat10.id, doctor_id: user13.id, comment: "An outstanding psychologist whose empathy and expertise truly made a positive difference in my life.", rating: "4.0")
Review.create!(patient_id: pat3.id, doctor_id: user13.id, comment: "I highly recommend their services for anyone seeking genuine support to mental well-being", rating: "4.0")

Review.create!(patient_id: pat1.id, doctor_id: user14.id, comment: "A skilled professional with a remarkable ability to provide clarity amidst chaos, this psychologist's guidance instilled confidence and a renewed sense of purpose.", rating: "4.0")
Review.create!(patient_id: pat2.id, doctor_id: user14.id, comment: "Thank you for the support and your help.", rating: "4.0")
Review.create!(patient_id: pat3.id, doctor_id: user14.id, comment: "Incredibly skilled and compassionate, this psychologist's ability to listen attentively and provide tailored guidance fostered immense progress in my mental health journey.", rating: "5.0")
Review.create!(patient_id: pat4.id, doctor_id: user14.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "4.0")
Review.create!(patient_id: pat5.id, doctor_id: user14.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "5.0")
Review.create!(patient_id: pat6.id, doctor_id: user14.id, comment: "Incredible psychologist - their nuanced approach and genuine empathy helped me navigate challenges, fostering a sense of self-awareness and inner strength.", rating: "3.0")
Review.create!(patient_id: pat7.id, doctor_id: user14.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "5.0")
Review.create!(patient_id: pat8.id, doctor_id: user14.id, comment: "An outstanding psychologist whose empathy and expertise truly made a positive difference in my life.", rating: "4.0")

Review.create!(patient_id: pat9.id, doctor_id: user15.id, comment: "Thank you for the support and your help.", rating: "4.0")
Review.create!(patient_id: pat10.id, doctor_id: user15.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "5.0")
Review.create!(patient_id: pat8.id, doctor_id: user15.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "4.0")
Review.create!(patient_id: pat7.id, doctor_id: user15.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "4.0")
Review.create!(patient_id: pat6.id, doctor_id: user15.id, comment: "An outstanding psychologist whose empathy and expertise truly made a positive difference in my life.", rating: "3.0")
Review.create!(patient_id: pat5.id, doctor_id: user15.id, comment: "Exceptional psychologist!.", rating: "4.0")
Review.create!(patient_id: pat4.id, doctor_id: user15.id, comment: "Highly skilled and empathetic, this psychologist provided invaluable support, guiding me towards greater mental clarity.", rating: "5.0")
Review.create!(patient_id: pat3.id, doctor_id: user15.id, comment: "I highly recommend their services for anyone seeking genuine support to mental well-being", rating: "4.0")

Review.create!(patient_id: pat1.id, doctor_id: user16.id, comment: "An outstanding psychologist whose empathy and expertise truly made a positive difference in my life.", rating: "3.0")
Review.create!(patient_id: pat2.id, doctor_id: user16.id, comment: "Exceptional psychologist!.", rating: "4.0")
Review.create!(patient_id: pat3.id, doctor_id: user16.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "4.0")
Review.create!(patient_id: pat4.id, doctor_id: user16.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "5.0")
Review.create!(patient_id: pat5.id, doctor_id: user16.id, comment: "Incredible psychologist - their nuanced approach and genuine empathy helped me navigate challenges, fostering a sense of self-awareness and inner strength.", rating: "4.0")
Review.create!(patient_id: pat6.id, doctor_id: user16.id, comment: "A skilled professional with a remarkable ability to provide clarity amidst chaos, this psychologist's guidance instilled confidence and a renewed sense of purpose.", rating: "5.0")
Review.create!(patient_id: pat7.id, doctor_id: user16.id, comment: "This psychologist's exceptional professionalism and genuine care created a transformative experience, offering me practical tools to manage stress and regain control over my life.", rating: "4.0")
Review.create!(patient_id: pat8.id, doctor_id: user16.id, comment: "A true beacon of support, this psychologist's insightful advice and empathetic nature helped me navigate complexities, enabling profound personal growth.", rating: "3.0")
Review.create!(patient_id: pat9.id, doctor_id: user16.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "4.0")
Review.create!(patient_id: pat10.id, doctor_id: user16.id, comment: "Exceptional psychologist!.", rating: "4.0")

Review.create!(patient_id: pat1.id, doctor_id: user17.id, comment: "An outstanding psychologist whose empathy and expertise truly made a positive difference in my life.", rating: "4.0")
Review.create!(patient_id: pat3.id, doctor_id: user17.id, comment: "Highly skilled and empathetic, this psychologist provided invaluable support, guiding me towards greater mental clarity.", rating: "4.0")
Review.create!(patient_id: pat2.id, doctor_id: user17.id, comment: "Exceptional psychologist!.", rating: "4.0")
Review.create!(patient_id: pat7.id, doctor_id: user17.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "4.0")
Review.create!(patient_id: pat6.id, doctor_id: user17.id, comment: "Incredible psychologist - their nuanced approach and genuine empathy helped me navigate challenges, fostering a sense of self-awareness and inner strength.", rating: "5.0")
Review.create!(patient_id: pat8.id, doctor_id: user17.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "4.0")
Review.create!(patient_id: pat9.id, doctor_id: user17.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "5.0")
Review.create!(patient_id: pat10.id, doctor_id: user17.id, comment: "Thank you for the support and your help.", rating: "4.0")

Review.create!(patient_id: pat10.id, doctor_id: user18.id, comment: "Exceptional psychologist!.", rating: "4.0")
Review.create!(patient_id: pat9.id, doctor_id: user18.id, comment: "Thank you for the support and your help.", rating: "4.0")
Review.create!(patient_id: pat8.id, doctor_id: user18.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "4.0")
Review.create!(patient_id: pat7.id, doctor_id: user18.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "5.0")
Review.create!(patient_id: pat6.id, doctor_id: user18.id, comment: "Incredible psychologist - their nuanced approach and genuine empathy helped me navigate challenges, fostering a sense of self-awareness and inner strength.", rating: "5.0")
Review.create!(patient_id: pat5.id, doctor_id: user18.id, comment: "A skilled professional with a remarkable ability to provide clarity amidst chaos, this psychologist's guidance instilled confidence and a renewed sense of purpose.", rating: "4.0")
Review.create!(patient_id: pat4.id, doctor_id: user18.id, comment: "Thank you for the support and your help.", rating: "4.0")
Review.create!(patient_id: pat3.id, doctor_id: user18.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "5.0")
Review.create!(patient_id: pat2.id, doctor_id: user18.id, comment: "A true beacon of support, this psychologist's insightful advice and empathetic nature helped me navigate complexities, enabling profound personal growth.", rating: "3.0")
Review.create!(patient_id: pat1.id, doctor_id: user18.id, comment: "An outstanding psychologist whose empathy and expertise truly made a positive difference in my life.", rating: "4.0")

Review.create!(patient_id: pat1.id, doctor_id: user19.id, comment: "Thank you for the support and your help.", rating: "4.0")
Review.create!(patient_id: pat2.id, doctor_id: user19.id, comment: "Remarkable psychologist; their insightful guidance and unwavering support have significantly contributed to my mental well-being. Their empathetic approach created a safe space where I felt understood and empowered to navigate life's challenges.", rating: "4.0")
Review.create!(patient_id: pat3.id, doctor_id: user19.id, comment: "Exceptional psychologist!.", rating: "4.0")
Review.create!(patient_id: pat10.id, doctor_id: user19.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "5.0")
Review.create!(patient_id: pat9.id, doctor_id: user19.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "4.0")
Review.create!(patient_id: pat8.id, doctor_id: user19.id, comment: "Incredible psychologist - their nuanced approach and genuine empathy helped me navigate challenges, fostering a sense of self-awareness and inner strength.", rating: "5.0")
Review.create!(patient_id: pat7.id, doctor_id: user19.id, comment: "Highly skilled and empathetic, this psychologist provided invaluable support, guiding me towards greater mental clarity.", rating: "4.0")
Review.create!(patient_id: pat6.id, doctor_id: user19.id, comment: "I highly recommend their services for anyone seeking genuine support to mental well-being", rating: "4.0")
Review.create!(patient_id: pat5.id, doctor_id: user19.id, comment: "An outstanding psychologist whose empathy and expertise truly made a positive difference in my life.", rating: "4.0")

Review.create!(patient_id: pat5.id, doctor_id: user20.id, comment: "Exceptional psychologist!.", rating: "4.0")
Review.create!(patient_id: pat4.id, doctor_id: user20.id, comment: "A compassionate and knowledgeable psychologist whose expertise and patience created a space for deep reflection, guiding me toward sustainable mental wellness.", rating: "5.0")
Review.create!(patient_id: pat3.id, doctor_id: user20.id, comment: "A skilled professional with a remarkable ability to provide clarity amidst chaos, this psychologist's guidance instilled confidence and a renewed sense of purpose.", rating: "4.0")
Review.create!(patient_id: pat2.id, doctor_id: user20.id, comment: "Empathetic and insightful, this psychologist's guidance was a pivotal force in my healing journey, offering a fresh perspective and effective coping mechanisms.", rating: "3.0")
Review.create!(patient_id: pat1.id, doctor_id: user20.id, comment: "Incredible psychologist - their nuanced approach and genuine empathy helped me navigate challenges, fostering a sense of self-awareness and inner strength.", rating: "5.0")
Review.create!(patient_id: pat6.id, doctor_id: user20.id, comment: "Remarkable psychologist - their understanding and guidance have been instrumental in my personal growth and well-being", rating: "4.0")
Review.create!(patient_id: pat7.id, doctor_id: user20.id, comment: "Highly skilled and empathetic, this psychologist provided invaluable support, guiding me towards greater mental clarity.", rating: "5.0")
Review.create!(patient_id: pat9.id, doctor_id: user20.id, comment: "I highly recommend their services for anyone seeking genuine support to mental well-being", rating: "3.0")
Review.create!(patient_id: pat10.id, doctor_id: user20.id, comment: "An invaluable ally in my mental health journey, this psychologist's empathy and expertise have been life-changing.", rating: "4.0")
Review.create!(patient_id: pat8.id, doctor_id: user20.id, comment: "An outstanding psychologist whose empathy and expertise truly made a positive difference in my life.", rating: "3.0")

puts "creating specializations"
Specialization.create!(doctor_id: user3.id, symptom_id: sym1.id)
Specialization.create!(doctor_id: user3.id, symptom_id: sym2.id)
Specialization.create!(doctor_id: user3.id, symptom_id: sym3.id)

Specialization.create!(doctor_id: user1.id, symptom_id: sym8.id)
Specialization.create!(doctor_id: user1.id, symptom_id: sym1.id)

Specialization.create!(doctor_id: user2.id, symptom_id: sym5.id)
Specialization.create!(doctor_id: user2.id, symptom_id: sym6.id)
Specialization.create!(doctor_id: user2.id, symptom_id: sym4.id)

Specialization.create!(doctor_id: user4.id, symptom_id: sym8.id)

Specialization.create!(doctor_id: user5.id, symptom_id: sym1.id)
Specialization.create!(doctor_id: user5.id, symptom_id: sym2.id)

Specialization.create!(doctor_id: user6.id, symptom_id: sym1.id)
Specialization.create!(doctor_id: user6.id, symptom_id: sym2.id)
Specialization.create!(doctor_id: user6.id, symptom_id: sym3.id)

Specialization.create!(doctor_id: user7.id, symptom_id: sym1.id)
Specialization.create!(doctor_id: user7.id, symptom_id: sym2.id)
Specialization.create!(doctor_id: user7.id, symptom_id: sym7.id)

Specialization.create!(doctor_id: user8.id, symptom_id: sym2.id)
Specialization.create!(doctor_id: user8.id, symptom_id: sym1.id)

Specialization.create!(doctor_id: user9.id, symptom_id: sym4.id)
Specialization.create!(doctor_id: user9.id, symptom_id: sym5.id)
Specialization.create!(doctor_id: user9.id, symptom_id: sym6.id)

Specialization.create!(doctor_id: user10.id, symptom_id: sym1.id)
Specialization.create!(doctor_id: user10.id, symptom_id: sym2.id)

Specialization.create!(doctor_id: user11.id, symptom_id: sym1.id)
Specialization.create!(doctor_id: user11.id, symptom_id: sym2.id)
Specialization.create!(doctor_id: user11.id, symptom_id: sym7.id)

Specialization.create!(doctor_id: user12.id, symptom_id: sym4.id)
Specialization.create!(doctor_id: user12.id, symptom_id: sym5.id)
Specialization.create!(doctor_id: user12.id, symptom_id: sym6.id)

Specialization.create!(doctor_id: user13.id, symptom_id: sym1.id)
Specialization.create!(doctor_id: user13.id, symptom_id: sym3.id)

Specialization.create!(doctor_id: user14.id, symptom_id: sym1.id)
Specialization.create!(doctor_id: user14.id, symptom_id: sym3.id)

Specialization.create!(doctor_id: user15.id, symptom_id: sym4.id)
Specialization.create!(doctor_id: user15.id, symptom_id: sym7.id)
Specialization.create!(doctor_id: user15.id, symptom_id: sym1.id)

Specialization.create!(doctor_id: user16.id, symptom_id: sym2.id)
Specialization.create!(doctor_id: user16.id, symptom_id: sym1.id)
Specialization.create!(doctor_id: user16.id, symptom_id: sym8.id)

Specialization.create!(doctor_id: user17.id, symptom_id: sym1.id)
Specialization.create!(doctor_id: user17.id, symptom_id: sym2.id)

Specialization.create!(doctor_id: user18.id, symptom_id: sym3.id)
Specialization.create!(doctor_id: user18.id, symptom_id: sym1.id)

Specialization.create!(doctor_id: user18.id, symptom_id: sym7.id)
Specialization.create!(doctor_id: user18.id, symptom_id: sym2.id)

Specialization.create!(doctor_id: user19.id, symptom_id: sym4.id)
Specialization.create!(doctor_id: user19.id, symptom_id: sym6.id)
Specialization.create!(doctor_id: user19.id, symptom_id: sym5.id)

Specialization.create!(doctor_id: user19.id, symptom_id: sym1.id)
Specialization.create!(doctor_id: user19.id, symptom_id: sym2.id)
Specialization.create!(doctor_id: user19.id, symptom_id: sym3.id)

Specialization.create!(doctor_id: user20.id, symptom_id: sym4.id)
Specialization.create!(doctor_id: user20.id, symptom_id: sym6.id)
Specialization.create!(doctor_id: user20.id, symptom_id: sym5.id)

puts "creating languages"
fr = Language.create!(name: "French")
en = Language.create!(name: "English")
it = Language.create!(name: "Italian")
de = Language.create!(name: "German")

DocLang.create!(language_id: fr.id, doctor_id: user1.id)
DocLang.create!(language_id: en.id, doctor_id: user1.id)
DocLang.create!(language_id: de.id, doctor_id: user1.id)

DocLang.create!(language_id: fr.id, doctor_id: user2.id)
DocLang.create!(language_id: it.id, doctor_id: user2.id)
DocLang.create!(language_id: en.id, doctor_id: user2.id)

DocLang.create!(language_id: it.id, doctor_id: user3.id)
DocLang.create!(language_id: en.id, doctor_id: user3.id)
DocLang.create!(language_id: fr.id, doctor_id: user3.id)

DocLang.create!(language_id: en.id, doctor_id: user4.id)
DocLang.create!(language_id: fr.id, doctor_id: user4.id)

DocLang.create!(language_id: de.id, doctor_id: user5.id)
DocLang.create!(language_id: en.id, doctor_id: user5.id)

DocLang.create!(language_id: en.id, doctor_id: user6.id)
DocLang.create!(language_id: it.id, doctor_id: user6.id)

DocLang.create!(language_id: en.id, doctor_id: user7.id)
DocLang.create!(language_id: fr.id, doctor_id: user7.id)

DocLang.create!(language_id: fr.id, doctor_id: user8.id)
DocLang.create!(language_id: en.id, doctor_id: user8.id)
DocLang.create!(language_id: de.id, doctor_id: user8.id)

DocLang.create!(language_id: en.id, doctor_id: user9.id)
DocLang.create!(language_id: fr.id, doctor_id: user9.id)

DocLang.create!(language_id: fr.id, doctor_id: user10.id)
DocLang.create!(language_id: en.id, doctor_id: user10.id)
DocLang.create!(language_id: de.id, doctor_id: user10.id)

DocLang.create!(language_id: en.id, doctor_id: user11.id)
DocLang.create!(language_id: it.id, doctor_id: user11.id)

DocLang.create!(language_id: fr.id, doctor_id: user12.id)

DocLang.create!(language_id: en.id, doctor_id: user13.id)
DocLang.create!(language_id: fr.id, doctor_id: user13.id)

DocLang.create!(language_id: en.id, doctor_id: user14.id)

DocLang.create!(language_id: en.id, doctor_id: user15.id)

DocLang.create!(language_id: en.id, doctor_id: user16.id)
DocLang.create!(language_id: de.id, doctor_id: user16.id)

DocLang.create!(language_id: it.id, doctor_id: user17.id)
DocLang.create!(language_id: de.id, doctor_id: user17.id)

DocLang.create!(language_id: en.id, doctor_id: user19.id)

DocLang.create!(language_id: fr.id, doctor_id: user20.id)
DocLang.create!(language_id: en.id, doctor_id: user20.id)
DocLang.create!(language_id: it.id, doctor_id: user20.id)
