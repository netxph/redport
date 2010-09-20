class PhotographsController < ApplicationController
  before_filter :authorize

  def import
  end

  def remote_import
    @title = "Import pictures from external repository."

    if Photograph.import_from_web 
      flash[:notice] = "Sucessfully imported pictures."
    else
      flash[:error] = "Error importing pictures. Please try again."
    end

    render :update do |page|
      page.replace_html "display_ajax", :partial => 'remote_import'
    end
  end

  def refresh
    @title = "Generate thumbnails and seadragon slices."

    if Gallery.refresh(Photograph.all_cached)
      flash[:notice] = "Files successfully generated."
    else
      flash[:error] = "Error generating files. Please try again."
    end
  end

end
