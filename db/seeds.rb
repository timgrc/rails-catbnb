# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
House.destroy_all
Cat.destroy_all

puts "Creating cats..."
garfield = Cat.create!({
  name: "Garfield",
  email: "garfield@meow.com",
  password: "123456789ABCDEFG"
})

puts "Creating houses..."
House.create!({
  cat:      garfield,
  name:     "Jon's house",
  address:  "Cat Town",
  kind:     "full_house",
  capacity: 5,
  price:    10
  })

puts "Finished!"
