class PlayersController < ApplicationController
    def index
        @players = Player.all
    end 

    def show
        @player = Player.find(params[:id])
        redirect_to @player
    end 
end
