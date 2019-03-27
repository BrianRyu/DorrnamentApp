class ApplicationController < ActionController::Base

  def current_user
    if session[:player_id]
      @player = Player.find(session[:player_id])
    end
  end

  def logged_in
    !!current_user
  end

  def authorized?
    redirect_to login_path unless logged_in
  end

  private

  def require_login
    return head(:forbidden) unless current_user # session.include? :user_id
  end

end
