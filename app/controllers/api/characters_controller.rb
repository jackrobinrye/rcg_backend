class Api::CharactersController < ApplicationController

    def create
        character = Character.make_new(params[:player_id])
        if character.save 
            render json: character, status: :accepted
        else 
            render json: {errors: character.errors.full_messages}, status: :unprocessable_entity
        end 
    end 

end
