# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
orders = [
  {deliver_order_number: "100108632"},
  {deliver_order_number: "100108633"},
  {deliver_order_number: "100108634"},
  {deliver_order_number: "100108635"},
  {deliver_order_number: "100108636"},
  {deliver_order_number: "100108637"}
]

products = [
  {name: "Kroger Meal Deal", qty: 5},
  {name: "Big Red Smokey", qty: 3},
  {name: "Italian Sausage", qty: 1}
]

users = [
  {usercode: "1", full_name: "Laura Maria", role: 1 },
  {usercode: "2", full_name: "Laura Maria", role: 1 }
]


orders.each do |order|
  Order.create!(
    deliver_order_number: order[:deliver_order_number]
  )
end

products.each do |product|
  Product.create!(
    name: product[:name],
    qty: product[:qty]
  )
end

users.each do |user|
  User.create!(
    usercode: user[:usercode],
    full_name: user[:full_name],
    role: user[:role]
  )
end

(1..6).each do |i|
  Note.create!(
    product_id: rand(1..3),
    order_id: rand(1..6)
  )
end
