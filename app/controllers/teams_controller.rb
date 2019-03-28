class TeamsController < ApplicationController

  before_action :authorized?, except: [:index, :show]
  before_action :find_team, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token, only: [:update, :create]

  helper_method :on_team

    def index
        @teams = Team.all
    end

    def show
    end

    def new
        @team = Team.new
        @team.players.build(name: 'player 1')
    end

    def create
      @team = Team.create(team_params)
      @team.players << Player.find(params[:player1])
      @team.players << Player.find(params[:player2])
      if @team.save
        redirect_to @team
      else
        render :new
      end
    end

    def edit
    end

    def update
      @team.update(team_params)
      @team.players.destroy_all
      @team.players << Player.find(params[:player1])
      @team.players << Player.find(params[:player2])
      if @team.save
        redirect_to @team
      else
        render :edit
      end
    end

    def destroy
        @team.drafts.destroy_all
        @team.entries.destroy_all
        @team.destroy
        redirect_to teams_path
    end

    private

    def team_params
      params.require(:team).permit(:name)
    end

    def find_team
        @team = Team.find(params[:id])
    end

    def on_team
      logged_in ? @team.players.include?(Player.find(session[:player_id])) : false
    end

end
