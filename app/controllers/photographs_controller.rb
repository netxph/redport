class PhotographsController < ApplicationController
  before_filter :authorize

  def import
    @title = "Import pictures from external repository."

    photos = Array.new

    begin
      Gallery.photos.each do |photo|
        unless Photograph.exists?(:code => photo.id)
          puts "importing #{photo.title}"
          Photograph.create!(:code => photo.id, :name => photo.title, :description => photo.description, :url => photo.url(:large))
        end
      end

      flash[:notice] = "Sucessfully imported pictures."
    rescue
      flash[:error] = "Error importing pictures. Please try again."
    end
  end

end
