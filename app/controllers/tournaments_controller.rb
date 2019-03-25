class TournamentsController < ApplicationController

    def index 
        @tournaments = Tournament.all
    end 

    def show 
        @tournament = Tournament.find(params[:id])
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
