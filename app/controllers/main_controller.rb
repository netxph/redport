class MainController < ApplicationController
  before_filter :authorize, :only => [:admin]

  def index
    get_photos
    get_featured

    @recent_news = Blog.recent 
  end

  def about
  end

  def error
  end

  def admin
    @title = "Site Actions"
  end

protected
  
  def get_photos

    @current_page = params[:page].nil? ? 1 : params[:page]

    @photos = Photograph.all_cached.paginate :page => @current_page, :per_page => 9

    if @photos.nil? or @photos.length == 0
      @title = "Gallery empty"
      flash[:notice] = "Gallery is still empty. Running import may resolve the problem."
    end

  end

  def get_featured
    @featured_photo = Photograph.get_featured(params[:featured]) unless @photos.nil? or @photos.length == 0
  end

end
