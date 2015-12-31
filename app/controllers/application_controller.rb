class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
    # puts 'moh' ******* can't print out , if u print out current_user record will alwyas be nil
    rescue ActiveRecord::RecordNotFound
  end


  helper_method :current_user
end
