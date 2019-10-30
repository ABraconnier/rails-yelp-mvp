# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "...creating restaurants"
10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    category: %w(chinese italian japanese french belgian).sample,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number
  )
  restaurant.save
end
puts "...creating reviews"
35.times do
  review = Review.new(
    content: Faker::Restaurant.review,
    rating: (1..5).to_a.sample,
    restaurant_id: (1..10).to_a.sample
  )
  review.save
end
