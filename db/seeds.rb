# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Organization.destroy_all
Category.destroy_all

puts "creating category seed...."
cat1 = Category.new({ name: "animal" })
cat1.save!
puts "done"

puts "now creating organization"
name = 'SPCA'
description = "Founded in Montreal in 1869, the Society for the Prevention of Cruelty to Animals (now known simply as the Montreal SPCA) was the first animal-welfare organization in Canada."
address = "5215 Rue Jean-Talon O, Montréal, QC H4P 1X4"
latitude = 45.495960
longitude = -73.652206
category_id = cat1.id
org1 = Organization.create({ name: name, description: description, address: address, latitude: latitude, longitude: longitude, category_id: category_id })
org1.save!
puts "finished"
