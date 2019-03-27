class TeamsController < ApplicationController
  before_action :authorized?, except: [:index, :show]
    before_action :find_team, only: [:show, :edit, :update, :destroy]

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
      @team.players << Player.find(player1_params)
      @team.players << Player.find(player2_params)
      redirect_to @team
    end

    def edit
    end

    def update
        @team.update(team_params)
        redirect_to @team
    end
    
    def destroy 
        @team.drafts.destroy_all
        @team.entries.destroy_all
        @team.destroy
        redirect_to teams_path

    def destroy
      # @team = Team.find(params[:id])
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

    def player1_params
      params[:team][:players_attributes]["0"][:id]
    end

    def player2_params
      params[:team][:players_attributes]["1"][:id]
    end

    # def player_params
    #   p params["team"]["name"]["players_attributes"]["0"]["id"])
    # end

end
