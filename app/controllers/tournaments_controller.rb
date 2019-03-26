class TournamentsController < ApplicationController

    def index
      @tournaments = Tournament.all.sort_by {|t| t.date}
    end

    def show
      @tournament = Tournament.find(params[:id])
      @teams = Team.all.sort_by(&:name)
      @entry = Entry.new
    end

    def new
      @tournament = Tournament.new
      @venues = Venue.all.sort_by(&:name)
    end

    def create
      @tournament = Tournament.create(tournament_params)
      if @tournament.save
        redirect_to @tournament
      else
        render :new
      end
    end

    def destroy
      tournament = Tournament.find(params[:id])
      tournament.entries.destroy_all
      tournament.destroy
      redirect_to tournaments_path
    end

    private

    def tournament_params
      params.require(:tournament).permit(:name, :date, :venue_id)
    end

end
