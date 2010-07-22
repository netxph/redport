class SessionsController < ApplicationController
  
  def new
    @title = "Authenticate User"
  end

  def create
    session[:password] = params[:password]
    flash[:notice] = "Sucessfully logged in"
    redirect_to "/login"
  end

  def destroy
    reset_session
    redirect_to "/login"
  end

end
