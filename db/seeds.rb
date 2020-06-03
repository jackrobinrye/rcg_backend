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

# character seed data
# player_id, name, type, 
# class, race, background, alignment, 
    # Faker::Games::DnD.klass #=> "Warlock"
    # Faker::Games::DnD.race #=> "Dwarf"
    # Faker::Games::DnD.background #=> "Urchin"
    # Faker::Games::DnD.alignment #=> "Lawful Neutral"
# strength, dexterity, constitution, intelligence, wisdom, charisma
jacks_character = Character.create(player_id: jack.id, name: Faker::Games::ElderScrolls.name, gender: Faker::Gender.type, type: "NPC", class: Faker::Games::DnD.klass, race: Faker::Games::DnD.race, background: Faker::Games::DnD.background, alignment: Faker::Games::DnD.alignment, strength: 13, dexterity: 14, consitution: 8, intelligence: 15, wisdom: 10, charisma: 12)

jacks_character_2 = Character.create(player_id: jack.id, name: Faker::Games::ElderScrolls.name, gender: Faker::Gender.type, type: "NPC", class: Faker::Games::DnD.klass, race: Faker::Games::DnD.race, background: Faker::Games::DnD.background, alignment: Faker::Games::DnD.alignment, strength: 12, dexterity: 10, consitution: 15, intelligence: 14, wisdom: 13, charisma: 8)

graelyns_character = Character.create(player_id: graelyn.id, name: Faker::Games::ElderScrolls.name, gender: Faker::Gender.type, type: "PC", class: Faker::Games::DnD.klass, race: Faker::Games::DnD.race, background: Faker::Games::DnD.background, alignment: Faker::Games::DnD.alignment, strength: 10, dexterity: 14, consitution: 8, intelligence: 15, wisdom: 12, charisma: 13)

sarahs_character = Character.create(player_id: sarah.id, name: Faker::Games::ElderScrolls.name, gender: Faker::Gender.type, type: "PC", class: Faker::Games::DnD.klass, race: Faker::Games::DnD.race, background: Faker::Games::DnD.background, alignment: Faker::Games::DnD.alignment, strength: 10, dexterity: 14, consitution: 15, intelligence: 13, wisdom: 12, charisma: 8)

michelles_character = Character.create(player_id: michelle.id, name: Faker::Games::ElderScrolls.name, gender: Faker::Gender.type, type: "PC", class: Faker::Games::DnD.klass, race: Faker::Games::DnD.race, background: Faker::Games::DnD.background, alignment: Faker::Games::DnD.alignment, strength: 14, dexterity: 10, consitution: 12, intelligence: 13, wisdom: 15, charisma: 8)