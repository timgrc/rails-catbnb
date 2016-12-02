puts "Creating seeds..."

Reservation.destroy_all
House.destroy_all
Cat.destroy_all

felix = Cat.new({
    name: 'Felix',
    email: "felix@cats.com",
    password: "catcat",
  }
)
felix.remote_profile_picture_url = 'https://res-5.cloudinary.com/dql1gghy3/image/upload/t_media_lib_thumb/v1480501453/felix_cat_io94c4.png'
felix.save!

space_cat = Cat.new({
  name: 'Space Cat',
  email: 'spacecat@cats.com',
  password: 'catcat'
  }
)

space_cat.remote_profile_picture_url = 'https://res.cloudinary.com/dql1gghy3/image/upload/v1480501451/spacecat_cat_dyauyo.jpg'
space_cat.save!

addresses_url = [
  {
    name: 'Huge dormitory treecat',
    address: '12 avenue Gilard, Nantes',
    url: 'https://res.cloudinary.com/dql1gghy3/image/upload/v1480501690/billy_bed_hduzge.jpg'
  },
  {
    name: 'Single room in cosy castle',
    address: '55 rue du faubourg saint honoré, Paris',
    url: 'https://res.cloudinary.com/dql1gghy3/image/upload/v1480501452/azrael_house_dnqbl5.jpg'
  },

 {
    name: 'One bed on my coach',
    address: '11 Chaussée de la Madeleine, 44000 Nantes',
    url: 'https://res.cloudinary.com/dql1gghy3/image/upload/v1480501453/tom_bed_gx4bsw.png'
  },

  {
    name: 'Comfy pizza bed',
    address: ' 11 Allée de la Maison Rouge, 44000 Nantes',
    url: 'https://res.cloudinary.com/dql1gghy3/image/upload/v1480501451/spacecat_bedjpg_e7x4uu.jpg'
  },

  {
    name: 'Large space dormitory',
    address: 'Halle de la Madeleine, 11 Impasse Juton, 44000 Nantes',
    url: 'https://res.cloudinary.com/dql1gghy3/image/upload/v1480501451/spacecat_house_pwtsx8.jpg'
  },

  {
    name: 'Nice house in the city center',
    address: '2 place du général Mellinet, Nantes',
    url: 'http://res.cloudinary.com/dql1gghy3/image/upload/v1480501450/azrael_bed_rfnosw.jpg'
  }
]

addresses_url.each do |attribute|
  house = House.new({
    name: attribute[:name],
    address: attribute[:address],
    kind: ['full_house', 'dormitory', 'cat_tree'].sample,
    capacity: (1..10).to_a.sample,
    price: (1..50).to_a.sample * 5
    }
  )

  house.cat = [felix, space_cat].sample
  url = attribute[:url]
  house.remote_photo_url = url
  house.save!

end

puts "Finished!"
