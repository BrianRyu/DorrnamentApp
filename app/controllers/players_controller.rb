class PlayersController < ApplicationController
    before_action :authorized?, except: [:new, :create, :index, :show]

    def index
        @players = Player.all.sort_by(&:name)
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
        if @player.save
          session[:player_id] = @player.id
          session[:name] = @player.name
          redirect_to @player
        else
          render :new
        end
    end

    def edit
    end

    def update
      @player = Player.find(params[:id])
      @player.update(player_params)
      if @player.save
          redirect_to @player
      else
          render :edit
      end
    end

    def destroy
      @player.destroy
      session.delete :player_id
      session.delete :name
      redirect_to login_path
    end

    def edit

    end 

    # private
    private

    def player_params
        params.require(:player).permit(:name, :birth_date,
          :gender, :start_date, :email, :password,
          :password_confirmation, :img_url)
    end
end
