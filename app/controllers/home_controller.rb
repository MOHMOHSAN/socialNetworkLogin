class HomeController < ApplicationController
before_action :set_auth 
before_action :require_login , only: [:profile]
# make sure it is only authenticate profile page and not index page
#  if u authenticate all pages, it will cause loop hole error

  def index
  	if current_user
		redirect_to home_profile_path
	end
  end

  def profile
  end

  private
  def set_auth
  	@auth = session[:omniauth] if session[:omniauth]
  end


  # Returns true if the user is logged in, false otherwise.
  def authenticate_user?
     !current_user.nil?
  end

  def require_login
    unless authenticate_user?
      flash[:error] = "You must be logged in to access this section"
      redirect_to root_path # halts request cycle
    end
  end

end
