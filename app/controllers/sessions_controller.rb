class SessionsController < ApplicationController

  def new
    render :new
  end

  # def create
  #   return redirect_to(controller: 'sessions',
  #                      action: 'new') if !params[:name] || params[:name].empty?
  #   session[:name] = params[:name]
  #   redirect_to controller: 'tournaments', action: 'index'
  # end

  def create
    @player = Player.find_by(email: params[:email])
    if @player && @player.authenticate(params[:password])
      session[:player_id] = @player.id
      session[:name] = @player.name
      redirect_to @player
    end
  end

  def destroy
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end

end
