# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
puts "Cleaned database..."

puts "creating doctors"
user1 = User.create(first_name: "Angela", last_name: "May", email: "angela.may@test.com", postal_code: "7000", password: "123456", is_doctor: true)
puts "created #{user1.first_name}"
user2 = User.create(first_name: "Maria", last_name: "May", email: "maria.may@test.com", postal_code: "7000", password: "123456", is_doctor: true)
puts "created #{user2.first_name}"
user3 = User.create(first_name: "Mark", last_name: "May", email: "mark.may@test.com", postal_code: "7000", password: "123456", is_doctor: true)
puts "created #{user3.first_name}"
user4 = User.create(first_name: "Giuseppe", last_name: "May", email: "giuseppe.may@test.com", postal_code: "7000", password: "123456", is_doctor: true)
puts "created #{user4.first_name}"
user5 = User.create(first_name: "Abby", last_name: "May", email: "abby.may@test.com", postal_code: "7000", password: "123456", is_doctor: true)
puts "created #{user5.first_name}"
puts "creating patients"
pat1 = User.create(first_name: "Georgina", last_name: "Fay", email: "georgina.may@test.com", postal_code: "7000", password: "123456", is_doctor: false)
puts "created #{pat1.first_name}"
pat2 = User.create(first_name: "Michael", last_name: "Fay", email: "michael.may@test.com", postal_code: "7000", password: "123456", is_doctor: false)
puts "created #{pat2.first_name}"
pat3 = User.create(first_name: "Cathrine", last_name: "Fay", email: "cathrine.may@test.com", postal_code: "7000", password: "123456", is_doctor: false)
puts "created #{pat3.first_name}"
pat4 = User.create(first_name: "Lara", last_name: "Fay", email: "lara.may@test.com", postal_code: "7000", password: "123456", is_doctor: false)
puts "created #{pat4.first_name}"
pat5 = User.create(first_name: "Mary-Anne", last_name: "Fay", email: "mary_anne.may@test.com", postal_code: "7000", password: "123456", is_doctor: false)
puts "created #{pat5.first_name}"
