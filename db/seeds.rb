# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
x = 0
20.times do
  user = User.create!(firstName: Faker::Name.first_name, lastName: Faker::Name.last_name, email: Faker::Internet.email, nickName: Faker::Name.first_name + x.to_s, password: Faker::Lorem.characters(number: 12, min_alpha: 4, min_numeric: 2))
  x = x + 1
end

user = User.create!(firstName: "Theo", lastName: "lastName", email: "theo@test.com", nickName: "theo99", password: "password", is_admin: true)
user = User.create!(firstName: "raph", lastName: "lastName", email: "raph@test.com", nickName: "raph99", password: "password", is_admin: true)

20.times do
  item = Item.create!(title: Faker::Lorem.characters(number: 10, min_alpha: 4, min_numeric: 2), description: Faker::Lorem.characters(number: 115, min_alpha: 4, min_numeric: 2), price: Faker::Number.decimal(l_digits: 2, r_digits: 2), image_url: Faker::Lorem.characters(number: 10, min_alpha: 4, min_numeric: 2), user_id: rand(21..22))
end

10.times do
  cart = Cart.create!(user_id: rand(User.first.id..User.last.id), item_id: rand(Item.first.id..Item.last.id))
end

5.times do
  order = Order.create!(user_id: rand(User.first.id..User.last.id), item_id: rand(Item.first.id..Item.last.id))
end