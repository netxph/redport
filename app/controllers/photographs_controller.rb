class PhotographsController < ApplicationController

  def import
    photos = Array.new

    Gallery.photos.each do |photo|
      puts "fetching #{photo.title}"
      photos << { :code => photo.id, :name => photo.title, :description => photo.description, :url => photo.url(:large) }
    end

  end

end
