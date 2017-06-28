# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "Coyote",
             email: "ackeme@ackeme.com",
             password:              "12345678",
             password_confirmation: "12345678",
             confirmed_at: Time.zone.now)

30.times do |n|
  name  = "User #{n+1}"
  email = "ackme#{n+1}@ackeme.com"
  password = "password"

  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               confirmed_at: Time.zone.now)
end

users = User.order(:created_at).take(6)

10.times do |index|
  content = "Mussum Ipsum, cacilds vidis litro abertis. Suco #{index}"
  users.each { |user| user.simpleposts.create!(content: content) }
end

p "Created #{User.count} users"
