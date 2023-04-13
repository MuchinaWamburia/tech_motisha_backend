# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Create some users
 
require 'faker'

puts "seeding started"

puts "Create some categories"
5.times do
  Category.create(name: Faker::Commerce.department)
end

puts "Create some users"
10.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    role: ['admin', 'user'].sample,
    profile_picture: Faker::Avatar.image
  )
end

puts "Create some contents"
20.times do
  Content.create(
    title: Faker::Book.title,
    description: Faker::Lorem.sentence,
    type: ['article', 'video'].sample,
    url: Faker::Internet.url,
    thumbnail: Faker::LoremFlickr.image,
    category: Category.all.sample,
    user: User.all.sample
  )
end

puts  "Create some subscriptions"
30.times do
  Subscription.create(
    category: Category.all.sample,
    user: User.all.sample
  )
end

puts "Create some comments"
20.times do
  Comment.create(
    comment: Faker::Lorem.sentence,
    user: User.all.sample,
    content: Content.all.sample,
    parent: Comment.all.sample
  )
end

puts "Create some wishlists"
20.times do
  Wishlist.create(
    content: Content.all.sample,
    user: User.all.sample
  )
end
puts "done"