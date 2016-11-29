# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

milou = Cat.new(
  name: "Milou",
  email: "milou@msn.com",
  password: "aaaaaa"
  )
milou.save

maison = House.new(
  name: "beautiful house",
  address: "86 rue de Glatigny",
  kind: "dormitory",
  capacity: "2",
  price: 3,
  cat_id: milou.id
  )

maison.save

