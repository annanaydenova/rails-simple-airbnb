# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'

light_and_spacious_garden_flat_london = { name: 'Light & Spacious Garden Flat London', address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75, number_of_guests: 3 }

garden_flat_london = { name: 'Garden Flat London', address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 100, number_of_guests: 5 }

  [ light_and_spacious_garden_flat_london, garden_flat_london ].each do |attributes|
    flat = Flat.create!(attributes)
    puts "Created #{flat.name}"
  end
puts 'Finished!'
