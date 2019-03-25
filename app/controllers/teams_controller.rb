class TeamsController < ApplicationController
    def index
        @teams = Team.all
    end 

    def show
        @team = Team.find(param[:id])
        redirect_to @team
    end
end
