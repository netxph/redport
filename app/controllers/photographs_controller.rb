class PhotographsController < ApplicationController
  before_filter :authorize

  def import
    @title = "Import pictures from external repository."

    if Photograph.import_from_web 
      flash[:notice] = "Sucessfully imported pictures."
    else
      flash[:error] = "Error importing pictures. Please try again."
    end
  end

  def refresh
    @title = "Generate thumbnails and seadragon slices."

    if Gallery.refresh(Photograph.all_cached)
      breakpoint
      flash[:notice] = "Files successfully generated."
    else
      flash[:error] = "Error generating files. Please try again."
    end
  end

end
