# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"
Chatroom.destroy_all
User.destroy_all
puts "Cleaned database..."

puts "creating doctors"
file = URI.open("https://st4.depositphotos.com/12982378/30881/i/450/depositphotos_308819686-stock-photo-positive-woman-pointing-finger-isolated.jpg")
user1 = User.new(first_name: "Angela", last_name: "May", email: "angela.may@test.com", postal_code: "7000", password: "123456", is_doctor: true)
user1.photo.attach(io: file, filename: "#{user1.first_name}.png", content_type: "image/png")
user1.save!
puts "created #{user1.first_name}"

file = URI.open("https://st3.depositphotos.com/9881890/13879/i/600/depositphotos_138797442-stock-photo-smiling-young-woman.jpg")
user2 = User.new(first_name: "Maria", last_name: "May", email: "maria.may@test.com", postal_code: "7000", password: "123456", is_doctor: true)
user2.photo.attach(io: file, filename: "#{user2.first_name}.png", content_type: "image/png")
user2.save!
puts "created #{user2.first_name}"

file = URI.open("https://st2.depositphotos.com/2931363/6569/i/600/depositphotos_65699901-stock-photo-black-man-keeping-arms-crossed.jpg")
user3 = User.new(first_name: "Mark", last_name: "May", email: "mark.may@test.com", postal_code: "7000", password: "123456", is_doctor: true)
user3.photo.attach(io: file, filename: "#{user3.first_name}.png", content_type: "image/png")
user3.save!

file = URI.open("https://st.depositphotos.com/2590737/2940/i/600/depositphotos_29407191-stock-photo-successful-elegant-smiling-mature-casual.jpg")
puts "created #{user3.first_name}"
user4 = User.create(first_name: "Giuseppe", last_name: "Picco", email: "giuseppe.picco@test.com", postal_code: "7000", password: "123456", is_doctor: true)
user4.photo.attach(io: file, filename: "#{user4.first_name}.png", content_type: "image/png")
puts "created #{user4.first_name}"

file = URI.open("https://st4.depositphotos.com/12985790/25235/i/600/depositphotos_252354162-stock-photo-excited-curly-african-american-girl.jpg")
user5 = User.create(first_name: "Abby", last_name: "May", email: "abby.may@test.com", postal_code: "7000", password: "123456", is_doctor: true)
user5.photo.attach(io: file, filename: "#{user5.first_name}.png", content_type: "image/png")
puts "created #{user5.first_name}"


puts "creating patients"
file = URI.open("https://st2.depositphotos.com/1017228/12452/i/600/depositphotos_124520052-stock-photo-portrait-of-a-young-happy.jpg")
pat1 = User.create(first_name: "Georgina", last_name: "Fay", email: "georgina.may@test.com", postal_code: "7000", password: "123456", is_doctor: false)
pat1.photo.attach(io: file, filename: "#{pat1.first_name}.png", content_type: "image/png")
puts "created #{pat1.first_name}"

file = URI.open("https://st.depositphotos.com/1594308/3681/i/600/depositphotos_36818041-stock-photo-pensive-businessman.jpg")
pat2 = User.create(first_name: "Michael", last_name: "Fay", email: "michael.may@test.com", postal_code: "7000", password: "123456", is_doctor: false)
pat2.photo.attach(io: file, filename: "#{pat2.first_name}.png", content_type: "image/png")
puts "created #{pat2.first_name}"

file = URI.open("https://st2.depositphotos.com/2931363/6569/i/600/depositphotos_65699901-stock-photo-black-man-keeping-arms-crossed.jpg")
pat3 = User.create(first_name: "Cathrine", last_name: "Fay", email: "cathrine.may@test.com", postal_code: "7000", password: "123456", is_doctor: false)
pat3.photo.attach(io: file, filename: "#{pat3.first_name}.png", content_type: "image/png")
puts "created #{pat3.first_name}"

file = URI.open("https://st4.depositphotos.com/13193658/30811/i/600/depositphotos_308117604-stock-photo-attractive-smiling-asian-woman-denim.jpg")
pat4 = User.create(first_name: "Lara", last_name: "Fay", email: "lara.may@test.com", postal_code: "7000", password: "123456", is_doctor: false)
pat4.photo.attach(io: file, filename: "#{pat4.first_name}.png", content_type: "image/png")
puts "created #{pat4.first_name}"

file = URI.open("https://st4.depositphotos.com/1000824/24973/i/600/depositphotos_249739908-stock-photo-happy-beautiful-brunette-woman.jpg")
pat5 = User.create(first_name: "Mary-Anne", last_name: "Fay", email: "mary_anne.may@test.com", postal_code: "7000", password: "123456", is_doctor: false)
pat5.photo.attach(io: file, filename: "#{pat5.first_name}.png", content_type: "image/png")
puts "created #{pat5.first_name}"

chat1 = Chatroom.create(patient_id: 7, doctor_id: 1)

Review.create!(patient_id: pat1.id, doctor_id: user1.id, comment: "Thank you for the support and your help.", rating: "4.0")
Review.create!(patient_id: pat2.id, doctor_id: user1.id, comment: "Exceptional psychologist!.", rating: "5.0")
Review.create!(patient_id: pat3.id, doctor_id: user2.id, comment: "I highly recommend their services for anyone seeking genuine support to mental well-being", rating: "3.0")
Review.create!(patient_id: pat4.id, doctor_id: user2.id, comment: "Outstanding psychologist—professional, empathetic, and transformative.", rating: "4.0")
Review.create!(patient_id: pat5.id, doctor_id: user3.id, comment: "Thank you for the support and your help.", rating: "5.0")
Review.create!(patient_id: pat1.id, doctor_id: user3.id, comment: "Outstanding psychologist—professional, empathetic, and transformative.", rating: "4.0")
Review.create!(patient_id: pat2.id, doctor_id: user4.id, comment: "Thank you for the support and your help.", rating: "3.0")
Review.create!(patient_id: pat3.id, doctor_id: user4.id, comment: "Outstanding psychologist—professional, empathetic, and transformative.", rating: "4.0")
Review.create!(patient_id: pat4.id, doctor_id: user5.id, comment: "Outstanding psychologist—professional, empathetic, and transformative.", rating: "5.0")
Review.create!(patient_id: pat1.id, doctor_id: user5.id, comment: "Thank you for the support and your help.", rating: "4.0")
