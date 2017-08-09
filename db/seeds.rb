# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "0632223278",
    category:     "italian"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "0632223278",
    category:     "japanese"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "0632223278",
    category:     "french"
  },
  {
    name:         "Pizza Nico",
    address:      "Quai des Chartrons 330000 Bordeaux",
    phone_number: "0632223278",
    category:     "belgian"
  },
  {
    name:         "Fouquets",
    address:      "Champs-Elysées 75016 Paris",
    phone_number: "0632223278",
    category:     "italian"
  }
]

reviews_attributes = [
  {
    content:       "Pas foufou",
    rating:        1,
    restaurant_id: 1
  },
  {
    content:       "Pas foufou",
    rating:        3,
    restaurant_id: 2
  },
  {
    content:       "Pas foufou",
    rating:        4,
    restaurant_id: 3
  }
]
Restaurant.create!(restaurants_attributes)
Review.create!(reviews_attributes)
puts 'Finished!'
