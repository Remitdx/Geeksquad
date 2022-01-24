# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Event.destroy_all # if Rails.env.development?


puts "Creating random events !"
event1 = Event.create!(debut: Date.new(2019,11,29), fin: Date.new(2019,11,30), lieu: "Mouchin", description: "Crémaillère pépère !")
event2 = Event.create!(debut: Date.new(2019,11,29), fin: Date.new(2019,11,30), lieu: "RBX-Loft", description: "La der des der !")
event1 = Event.create!(debut: Date.new(2019,11,29), fin: Date.new(2019,11,30), lieu: "Lulu - Lille", description: "Marie a dit oui !")

puts "done !"
