class MainController < ApplicationController
  def index
    @photos = Photograph.all

    featured_index = 1 + rand(@photos.count)
    @featured_photo = @photos[featured_index]

    #just in case it returns null
    if @featured_photo.nil?
      @featured_photo = @photos[0]
    end
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
