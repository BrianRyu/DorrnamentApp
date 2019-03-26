class DraftsController < ApplicationController
    def index
        @drafts = Draft.all
    end
    
    def show
        @draft = Draft.find(params[:id])
    end 

    def new
        @draft = Draft.new
    end 
 
    def create
        @draft = Draft.create(draft_params)
        redirect_to @draft.team
    end

    private

    def draft_params
        params[:draft][:player_id] = params[:player_id]
        team = Team.find_or_create_by(name: params[:draft][:team])
        params[:draft][:team_id] = team.id
        params.require(:entry).permit(:player_id, :team_id)
    end 
end
