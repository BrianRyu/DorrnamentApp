class VenuesController < ApplicationController

    def index 
        @venues = Venue.all
    end 

    def show 
        @venue = Venue.find(params[:id])
    end 
    
    def new 
        @venue = Venue.new
    end 

    def create 
        @venue = Venue.create(venue_params)
        if @venue.save 
            redirect_to @venue
        else
            render :new 
        end
    end

    private 

    def venue_params 
        params.require(:venue).permit(:name, :location)
    end
end
