# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  email: 'user1@example.com',
  password: 'zaqxswcde',
  password_confirmation: 'zaqxswcde',
  
)
puts "User created"

10.times do |place| #create enough places
  Place.create!(
    name: "Place to eat # #{place + 1}",
    address: "9151 W Peoria Rd, Suite 101, Peoria, AZ 85345",
    description: "The # #{place + 1} best place to eat",
    user_id: 1
  )
  puts "Created place #{place + 1}"
end

10.times do |comment|
    Comment.create!(
        message: "Hello testing 123",
        rating: "1 stars",
        place_id: comment+1
    )
    puts "Created comment for place #{place_id}"
end