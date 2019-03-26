class EntriesController < ApplicationController
   skip_before_action :verify_authenticity_token

  def create
    @entry = Entry.create(entry_params)
    redirect_to @entry.tournament
  end

  private

  def entry_params
    params[:entry][:tournament_id] = params[:tournament_id]
    team = Team.find_or_create_by(name: params[:entry][:team])
    params[:entry][:team_id] = team.id
    params.require(:entry).permit(:tournament_id, :team_id)
  end

end
