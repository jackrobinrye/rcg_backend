class Api::PlayersController < ApplicationController

    def index
        players = Player.all
        render json: PlayerSerializer.new(players) 
    end

    def create
        # byebug
        player = Player.new(player_params)
        if player.save 
            render json: player, status: :accepted
        else 
            render json: {errors: player.errors.full_messages}, status: :unprocessable_entity
        end 
    end 

    private 

    def player_params
        # "id": 1,
        # "name": "Jack",
        # "age": 25,
        # "gender": "agender",
        # "dm": true
        # "created_at": "2020-06-03T21:57:13.747Z",
        # "updated_at": "2020-06-03T21:57:13.747Z",
        hash = params.require(:player).permit(:name, :age, :gender, :dm)
        # byebug
        # if hash[]
    end

end
