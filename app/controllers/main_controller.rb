class MainController < ApplicationController
  def index
    @photos = Photograph.all_cached
    @featured_photo = Photograph.get_featured(params[:featured])

    if @photos.nil? or @photos.count == 0
      @title = "Gallery empty"
      flash[:notice] = "Gallery is still empty. Running import may resolve the problem."
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
