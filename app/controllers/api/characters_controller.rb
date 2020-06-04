class Api::CharactersController < ApplicationController

    def create
        character = Character.new(character_params)
        if character.save 
            render json: character, status: :accepted
        else 
            render json: {errors: character.errors.full_messages}, status: :unprocessable_entity
        end 
    end 

    private 

    def character_params
        # "pc": false,
        # "name": "Gerdur The Old",
        # "gender": "Female",
        # "race": "Half-Elf",
        # "cclass": "Cleric"
        # "background": "Pirate",
        # "alignment": "Chaotic Good",
        # "strength": 13,
        # "dexterity": 14,
        # "constitution": 8,
        # "intelligence": 15,
        # "wisdom": 10,
        # "charisma": 12,
        # "player_id": 1,
        # // I don't remember what to do with player_id here. Do I just leave it as player_id
        # // or do I make it just player?
        params.require(:character).permit(:pc, :name, :age, :gender, :race, :cclass, :background, :alignment, :strength, :dexterity, :constitution, :intelligence, :wisdom, :character, :player_id)
    end

end
