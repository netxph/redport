class PhotographsController < ApplicationController
  before_filter :authorize

  def import
    @title = "Import pictures from external repository."
  end

  def remote_import
    if Photograph.import_from_web 
      render :update do |page|
        page.replace_html "message", :partial => "shared/remote_success"
      end
    else
      render :update do |page|
        page.replace_html "message", :partial => "shared/remote_failed"
      end
    end
  end

  def refresh
    @title = "Generate thumbnails and seadragon slices."
  end

  def remote_refresh
    if Gallery.refresh(Photograph.all_cached)
      render :update do |page|
        page.replace_html "message", :partial => "shared/remote_success"
      end
    else
      render :update do |page|
        page.replace_html "message", :partial => "shared/remote_failed"
      end
    end
  end

end
