class SessionsController < ApplicationController
  
  def new
    @title = "Authenticate User"
  end

  def create
    session[:password] = params[:password]

    if admin?    
      flash[:notice] = "Sucessfully logged in"
    else
      flash[:error] = "Login failed"
    end

    redirect_to "/login"
  end

  def destroy
    reset_session
    redirect_to "/login"
  end

end
