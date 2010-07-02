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

end
