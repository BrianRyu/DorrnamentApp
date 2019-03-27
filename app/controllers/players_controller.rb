class PlayersController < ApplicationController
    before_action :authorized?, except: [:new, :create, :index, :show]

    def index
        @players = Player.all
    end

    def show
        @player = Player.find(params[:id])
        render :show
    end

    def new
        @player = Player.new
        render :new
    end

    def create
        @player = Player.create(player_params)
        redirect_to @player
    end

    private

    def player_params
        params.require(:player).permit(:name, :birth_date, :gender, :start_date, :email, :password, :password_confirmation)
    end
end
