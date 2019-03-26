class TeamsController < ApplicationController
  def index
      @teams = Team.all
  end

  def show
      @team = Team.find(params[:id])
      # redirect_to @team
  end
end
