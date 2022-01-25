# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Participant.destroy_all # if Rails.env.development?
Event.destroy_all # if Rails.env.development?
User.destroy_all # if Rails.env.development?

puts "Creating random users"
user1 = User.create!(email: "remi@gmail.com", password: "azerty", nom: "Tondeux", prenom: "Rémi", pseudo: "Kodoliprane", photo:"", point: 0 )
user2 = User.create!(email: "lulu@gmail.com", password: "azerty", nom: "Deroissart", prenom: "Lucas", pseudo: "NKodokante", photo:"", point: 0 )
user3 = User.create!(email: "lele@gmail.com", password: "azerty", nom: "Froissard", prenom: "Léo", pseudo: "Kododiou", photo:"", point: 0 )
user4 = User.create!(email: "mofo@gmail.com", password: "azerty", nom: "Schneider", prenom: "Arnaud", pseudo: "KodoctorMF", photo:"", point: 0 )

puts "Creating random events !"
event1 = Event.create!(debut: Date.new(2019,11,29), fin: Date.new(2019,11,30), lieu: "Mouchin", description: "Crémaillère pépère !")
event2 = Event.create!(debut: Date.new(2019,11,29), fin: Date.new(2019,11,30), lieu: "RBX-Loft", description: "La der des der !")
event3 = Event.create!(debut: Date.new(2019,11,29), fin: Date.new(2019,11,30), lieu: "Lulu - Lille", description: "Marie a dit oui !")

puts "Creating random participants !"
participant1 = Participant.create!(event: event1, user: user1)
participant2 = Participant.create!(event: event1, user: user4)
participant3 = Participant.create!(event: event1, user: user3)

participant1 = Participant.create!(event: event2, user: user1)
participant2 = Participant.create!(event: event2, user: user2)
participant3 = Participant.create!(event: event2, user: user3)

participant1 = Participant.create!(event: event3, user: user3)
participant2 = Participant.create!(event: event3, user: user2)
participant3 = Participant.create!(event: event3, user: user4)
puts "done !"
