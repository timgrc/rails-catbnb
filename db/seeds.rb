# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating seed in progress ..."
Cat.destroy_all
House.destroy_all

felix = Cat.create(
  name:     'Felix',
  password: 'felixfelix',
  email:    'felix@felix.cat'
)

5.times do
  the_house = House.new(
    name: Faker::Address.city,
    address: Faker::Address.street_address,
    kind: ['full_house', 'dormitory', 'cat_tree'].sample,
    capacity: 3,
    price: 30
  )

  the_house.cat = felix
  the_house.save!
end

puts "Seed done."
