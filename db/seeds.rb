# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.destroy_all
Cat.destroy_all

puts "Creating seeds..."

cats_with_houses = [
  {
    cat: {
      name: 'Garfield',
      profile_picture: 'https://res.cloudinary.com/dgvrordwa/image/upload/v1480090985/ubx7oxz697ufiiyz3rzl.jpg'
    },
    house: {
      name: 'Garfields house'
      address: '50 rue de Garfield'
      photo: 'https://res.cloudinary.com/dgvrordwa/image/upload/v1480090985/ubx7oxz697ufiiyz3rzl.jpg'
    }
  },
  {
    cat: {
      name: 'Garfield',
      profile_picture: 'https://res.cloudinary.com/dgvrordwa/image/upload/v1480090985/ubx7oxz697ufiiyz3rzl.jpg'
    },
    house: {
      name: 'Garfields house'
      address: '50 rue de Garfield'
      photo: 'https://res.cloudinary.com/dgvrordwa/image/upload/v1480090985/ubx7oxz697ufiiyz3rzl.jpg'
    }
  }
]

cats_with_houses.each do |cat|
  seed_cat = Cat.create(
    name: cat[:cat][:name],
    email: "#{cat.name.downcase}@cats.com",
    profile_picture: cat.[:cat][:profile_picture]
  )
  seed_house = House.new(
    # objects info
  )
  seed_house.cat = seed_cat
  seed_house.save!
end

# garfield = Cat.create(name: 'Garfield', email: 'email@example.com', password: 'password')
# felix = Cat.create(name: 'Felix', email: 'felix@example.com', password: 'password_felix')


# le_wagon = House.new(name: 'Le Wagon HQ', address: '16 Villa Gaudelet, Paris', kind: 'full_house', capacity: 1, price: 20)
# maison = House.new(name: 'Maison', address: '20 rue des Lilas, Nantes', kind: 'dormitory', capacity: 5, price: 200)

# le_wagon.cat = garfield
# maison.cat = felix

# le_wagon.save!
# maison.save!

puts "Finished!"
