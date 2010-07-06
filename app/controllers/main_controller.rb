class MainController < ApplicationController
  def index
    @photos = Photograph.all
    @featured_photo = Photograph.get_featured(params[:featured])
  end

  def login
    @title = "Secure code"
  end

  def secure
    session[:user] = params[:password]
    redirect_to root_url
  end

  def about

  end
  
  def refresh
    Gallery.refresh
    redirect_to root_url
  end
end
