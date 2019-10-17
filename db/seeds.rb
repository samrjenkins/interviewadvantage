# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Client.create!(first_name: 'Meli', last_name: 'Besse', photo: Rails.root.join('app/assets/images/meli.jpeg').open)
  Client.create!(first_name: 'Sam', last_name: 'Jenkins', photo: Rails.root.join('app/assets/images/sam.jpeg').open)
end

Coach.create!(email: "tony@besse.com", password: 12345678)
