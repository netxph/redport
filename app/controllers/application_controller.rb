# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  helper_method :admin?
  
  protected
  
  def authorize
    unless admin?
      flash[:error] = "Unauthorize access."
      redirect_to root_path
      false
    end
  end
  
  def admin?
    unless params[:user].nil?
      params[:user] == "r3dp0rt"
    else
      false
    end
  end
end
