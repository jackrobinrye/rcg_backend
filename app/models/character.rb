class Character < ApplicationRecord
    belongs_to :player

    def self.make_new(player_id) 
        races = ["Dragonborn", "Dwarf", "Elf", "Gnome", "Half-Elf", "Halfling", "Half-Orc", "Human", "Tiefling"]
        stats = [8, 10, 12, 13, 14, 15].shuffle
        if Player.all.find(player_id).dm == true
            self.new(
                player_id: player_id, 
                name: Faker::Games::ElderScrolls.name, 
                gender: Faker::Gender.type, 
                pc: false, 
                cclass: Faker::Games::DnD.klass, 
                race: races.sample, 
                background: Faker::Games::DnD.background, 
                alignment: Faker::Games::DnD.alignment, 
                strength: stats[0], 
                dexterity: stats[1], 
                constitution: stats[2], 
                intelligence: stats[3], 
                wisdom: stats[4], 
                charisma: stats[5]
            )
        else 
            self.new(
                player_id: player_id, 
                name: Faker::Games::ElderScrolls.name, 
                gender: Faker::Gender.type, 
                pc: true, 
                cclass: Faker::Games::DnD.klass, 
                race: races.sample, 
                background: Faker::Games::DnD.background, 
                alignment: Faker::Games::DnD.alignment, 
                strength: stats[0], 
                dexterity: stats[1], 
                constitution: stats[2], 
                intelligence: stats[3], 
                wisdom: stats[4], 
                charisma: stats[5]
            )
        end
    end 
end
