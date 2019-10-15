class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  attr_reader :current_user

  helper_method :current_user
  def current_user
    if session[:user_id]
      unless User.find(session[:user_id]).nil?
        @current_user ||= User.find(session[:user_id])
      end
    else
      @current_user = nil
    end
  end
end
