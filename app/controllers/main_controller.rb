class MainController < ApplicationController
  def index
    featured_index = 1 + rand(Gallery.photos.total)
    @featured_photo = Gallery.photos[featured_index]

    #just in case it returns null
    if @featured_photo.nil?
      @featured_photo = Gallery.photos[0]
    end
  end

  def about
  end
  
  def refresh
    Gallery.refresh
    redirect_to root_url
  end
end
