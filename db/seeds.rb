# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# genders: male, female, non-binary, agender
# statuses: DM, player

# player seed data 
# name age gender status
jack = Player.create(name: "Jack", age: 25, gender: "agender", status: "DM")
graelyn = Player.create(name: "Graelyn", age: 25, gender: "non-binary", status: "Player")
sarah = Player.create(name: "Sarah", age: 25, gender: "non-binary", status: "Player")
michelle = Player.create(name: "Michelle", age: 25, gender: "female", status: "Player")