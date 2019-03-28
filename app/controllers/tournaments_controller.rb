class TournamentsController < ApplicationController
  before_action :authorized?, except: [:index, :show]

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

    def edit
      @tournament = Tournament.find(params[:id])
      @venues = Venue.all.sort_by(&:name)
    end

    def update
      @tournament = Tournament.find(params[:id])
      @tournament.update(tournament_params)
      if @tournament.save
          redirect_to @tournament
      else
          render :new
      end
    end

    def analytics
      @num_of_teams = Team.all.count
      @num_of_tours = Tournament.all.count
      @num_of_players = Player.all.count
      @num_of_venues = Venue.all.count
      @avg_age = player_age/Player.all.count
      @avg_exp = player_exp/Player.all.count
      @pop_tour = pop_tour
      @pop_venue = pop_venue
      @prolific_team = prolific_team
    end

    private

    def tournament_params
      params.require(:tournament).permit(:name, :date, :venue_id)
    end

    def player_age
      now = Time.now.strftime("%Y-%m-%d")[0, 4].to_i
      birth_years = []
      Player.all.each do |player|
        player.birth_date = player.birth_date.to_s[0, 4].to_i
        birth_years << player.birth_date 
      end 
      sum = 0 
      birth_years.each do |date|
        age = now - date
        sum += age
      end 
      return sum
    end

    def player_exp
      now = Time.now.strftime("%Y-%m-%d")[0, 4].to_i 
      start_years = []
      Player.all.each do |player|
        player.start_date = player.start_date.to_s[0, 4].to_i 
        start_years << player.start_date
      end
      sum = 0
      start_years.each do |year|
        exp = now - year 
        sum += exp 
      end 
      return sum
    end

    def pop_tour
      tournament = Tournament.all.max {|x, y| x.teams.count <=> y.teams.count}
      return tournament.name
    end

    def pop_venue 
      tournament = Tournament.all.max {|x, y| x.teams.count <=> y.teams.count}
      return tournament.venue.name
    end 

    def prolific_team
      team = Team.all.max {|x, y| x.tournaments.count <=> y.tournaments.count}
      return team.name      
    end

end
