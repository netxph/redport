class MainController < ApplicationController
  def index
    
  end

  def about
  end
  
  def refresh
    Gallery.refresh
    redirect_to root_url
  end
end
