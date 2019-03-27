class EntriesController < ApplicationController
   skip_before_action :verify_authenticity_token
       before_action :authorized?

  def create
    @entry = Entry.create(create_entry_params)
    redirect_to @entry.tournament
  end

  def destroy
    entry = Entry.find_by(destroy_entry_params)
    entry.destroy
    redirect_to entry.tournament
  end

  private

  def create_entry_params
    params[:entry][:tournament_id] = params[:tournament_id]
    team = Team.find_or_create_by(name: params[:entry][:team])
    params[:entry][:team_id] = team.id
    params.require(:entry).permit(:tournament_id, :team_id)
  end

  def destroy_entry_params
    params.permit(:team_id, :tournament_id)
  end

end
