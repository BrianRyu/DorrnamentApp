class ApplicationController < ActionController::Base
  helper_method :logged_in
  helper_method :admin
  # helper_method :admin_or_member

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

  def admin
    [
      Player.find_by(email: 'jamesdorr3@gmail.com'),
      Player.find_by(email: 'brian@gmail.com')
    ].include?(Player.find(session[:player_id]))
  end

end
