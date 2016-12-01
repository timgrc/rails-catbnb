# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# House.destroy_all
# Cat.destroy_all

puts "Creating seeds..."

# cats_houses = [
#   {
#     cat: {
#       name: 'Azrael',
#       profile_picture: 'https://res-3.cloudinary.com/dql1gghy3/image/upload/t_media_lib_thumb/v1480501452/azrael_cat_gdn5ij.png'
#     },
#     house: {
#       name: 'Gargamel castle',
#       address: 'Shtroupmfland',
#       photo: image_path('houses/tom_house.jpg')
#     }
#   },

#   {
#     cat: {
#       name: 'Garfield',
#       profile_picture: 'https://res-3.cloudinary.com/dql1gghy3/image/upload/t_media_lib_thumb/v1480501452/garfield_cat_nz8oiw.jpg'
#     },

#     house: {
#       name: 'Garfields house',
#       address: '50 rue de Garfield',
#       photo: image_path('houses/tom_house.jpg')
#     }
#   },

# garfield = Cat.create(name: 'Garfield', email: 'email@example.com', password: 'password')
# felix = Cat.create(name: 'Felix', email: 'felix@example.com', password: 'password_felix')
# toto = Cat.create(name: 'Felix', email: 'felix@example.com', password: 'password_felix')

# le_wagon = House.new(name: 'Le Wagon HQ', address: '16 Villa Gaudelet, Paris', kind: 'full_house', capacity: 1, price: 20)
# maison = House.new(name: 'Maison', address: '20 rue des Lilas, Nantes', kind: 'dormitory', capacity: 5, price: 200)
# work = House.new(name: 'Work', address: '20 rue des Lilas, Nantes', kind: 'dormitory', capacity: 5, price: 200)

# le_wagon.cat = garfield
# maison.cat = felix
# work.cat = toto

# le_wagon.save!
# maison.save!
# work.save!

# res_test = Reservation.new(
#   arrival_date: Date.new(2016,12,22),
#   departure_date: Date.new(2016,12,29),
#   nb_cats: 3, price: 20,
#   cat: garfield,
#   house: le_wagon,
#   )

# res_test.cat = garfield
# res_test.house = le_wagon
# res_test.save!

#   {
#     cat: {
#       name: 'Le Chat',
#       profile_picture: 'https://res-4.cloudinary.com/dql1gghy3/image/upload/t_media_lib_thumb/v1480501454/lechat_cat.jpg'
#     },

#     house: {
#       name: 'Fritland',
#       address: '50 rue de Belgique',
#       photo: image_path('houses/tom_house.jpg')
#     }
#   },

#   {
#     cat: {
#       name: 'Felix',
#       profile_picture: 'https://res-5.cloudinary.com/dql1gghy3/image/upload/t_media_lib_thumb/v1480501453/felix_cat_io94c4.png'
#     },

#     house: {
#       name: 'Felix House',
#       address: 'Rue de la patée pour chat gris',
#       photo: image_path('houses/tom_house.jpg')
#     }
#   },

#    {
#     cat: {
#       name: 'Space Cat',
#       profile_picture: 'https://cloudinary.com/console/media_library#/dialog/image/upload/spacecat_cat_dyauyo'
#     },

#     house: {
#       name: 'Hello',
#       address: 'World',
#       photo: image_path('houses/tom_house.jpg')
#     }
#   },

#   {
#     cat: {
#       name: 'Moustache',
#       profile_picture: 'https://res-4.cloudinary.com/dql1gghy3/image/upload/t_media_lib_thumb/v1480501451/moustache_cat_vdcvuf.png'
#     },

#     house: {
#       name: 'Chez Martine',
#       address: 'Cucul avenue',
#       photo: image_path('houses/tom_house.jpg')
#     }
#   },

#   {
#     cat: {
#       name: 'Manineko',
#       profile_picture: 'https://res-3.cloudinary.com/dql1gghy3/image/upload/t_media_lib_thumb/v1480501452/manineko_cat_g0wa5c.jpg'
#     },

#     house: {
#       name: 'Chinese Restaurant',
#       address: 'Asia',
#       photo: image_path('houses/tom_house.jpg')
#     }
#   },


#   {
#     cat: {
#       name: 'Tom',
#       profile_picture: 'https://cloudinary.com/console/media_library#/dialog/image/upload/tom_cat_scmno7'
#     },

#     house: {
#       name: 'Jerry house',
#       address: 'The US of America',
#       photo: image_path('houses/tom_house.jpg')
#     }
#   },


#   {
#     cat: {
#       name: 'Billy',
#       profile_picture: 'https://cloudinary.com/console/media_library#/dialog/image/upload/billy_cat_ck6ucp'
#     },

#     house: {
#       name: 'Billy House',
#       address: '15 avenue Whiskas',
#       photo: image_path('houses/tom_house.jpg')
#     }
#   },
# ]

# puts cats_houses[1][:house][:photo]


# cats_houses.each do |cat_house|
#   seed_cat = Cat.create(
#     name: cat_house[:cat][:name],
#     email: "#{cat_house[:cat][:name].downcase}@cats.com",
#     password: "catcat",
#     profile_picture: cat_house[:cat][:profile_picture]
#   )
#   seed_house = House.new(
#     name: cat_house[:house][:name],
#     address: cat_house[:house][:address],
#     photo: cat_house[:house][:photo],
#     kind: ['full_house', 'dormitory', 'cat_tree'].sample,
#     capacity: (1..10).to_a.sample,
#     price: (1..50).to_a.sample * 5
#   )
#   seed_house.cat = seed_cat
#   seed_house.save!
# end

# # garfield = Cat.create(name: 'Garfield', email: 'email@example.com', password: 'password')
# # felix = Cat.create(name: 'Felix', email: 'felix@example.com', password: 'password_felix')


# # le_wagon = House.new(name: 'Le Wagon HQ', address: '16 Villa Gaudelet, Paris', kind: 'full_house', capacity: 1, price: 20)
# # maison = House.new(name: 'Maison', address: '20 rue des Lilas, Nantes', kind: 'dormitory', capacity: 5, price: 200)

# # le_wagon.cat = garfield
# # maison.cat = felix

# # le_wagon.save!
# # maison.save!

# {

#     house:
#   },


felix = Cat.new({
    name: 'Felix',
    email: "felix@cats.com",
    password: "catcat",
  }
)
felix.remote_profile_picture_url = 'https://res-5.cloudinary.com/dql1gghy3/image/upload/t_media_lib_thumb/v1480501453/felix_cat_io94c4.png'
felix.save!

10.times do
  felix_house = House.new({
    name: 'Felix House',
    address: '2 Place Général Mellinet, 44100 Nantes',
    kind: ['full_house', 'dormitory', 'cat_tree'].sample,
    capacity: (1..10).to_a.sample,
    price: (1..50).to_a.sample * 5
    }
  )

  felix_house.cat = felix
  url = "https://res.cloudinary.com/dql1gghy3/image/upload/v1480501453/felix_bed_awglpw.png"
  # felix_house.remote_photo_url = url
  felix_house.save!

end
# p felix_house
puts "Finished!"
