# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
mere_poule = { name: 'La Mère Poule', address: '2 rue Oberkampf', phone_number: 0o612131415, category: 'french' }
le_belge = { name: 'Le Belge', address: '2 des Belges', phone_number: 0o61213147, category: 'belgian' }
nikomo = { name: 'Nikomo', address: '5 rue de Tokyo', phone_number: 0o61213147, category: 'japanese' }
la_tratoria = { name: 'La Tratoria', address: '25 avenue ', phone_number: 0o61213147, category: 'italian' }
tourdargent = { name: 'La Tour dArgent', address: '15 boulevard de Capu', phone_number: 0o61213147, category: 'french' }

[mere_poule, le_belge, nikomo, la_tratoria, tourdargent].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
