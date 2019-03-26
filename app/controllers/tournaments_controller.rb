class TournamentsController < ApplicationController

    def index
        @tournaments = Tournament.all.sort_by {|t| t.date}
    end

    def show
        @tournament = Tournament.find(params[:id])
        @teams = Team.all.sort_by {|t| t.name}
        @team = Team.new
    end

    def new
        @tournament = Tournament.new
    end

    def create
        @tournament = Tournament.create(tournament_params)
        if @tournament.save
            redirect_to @tournament
        else
            render :new
        end
    end

    private

    def tournament_params
        params.require(:tournament).permit(:name, :location)
    end

end
