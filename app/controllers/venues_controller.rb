class VenuesController < ApplicationController
  before_action :authorized?, except: [:index, :show]

    def index
        @venues = Venue.all.sort_by {|v| v.name}
    end

    def show
        @venue = Venue.find(params[:id])
        @tournaments = @venue.tournaments.sort_by(&:date)
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

    def destroy
      venue = Venue.find(params[:id])
      venue.destroy
      redirect_to venues_path
    end

    def edit
      @venue = Venue.find(params[:id])
    end

    def update
      @venue = Venue.find(params[:id])
      @venue.update(venue_params)
      if @venue.save
          redirect_to @venue
      else
          render :edit
      end
    end

    private

    def venue_params
        params.require(:venue).permit(:name, :location, :img_url)
    end

end
