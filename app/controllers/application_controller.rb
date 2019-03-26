class ApplicationController < ActionController::Base

  def current_user
    session[:name]
  end

  private

  def require_login
    return head(:forbidden) unless current_user # session.include? :user_id
  end

end
