class Photo < ActiveRecord::Base
  attr_accessible :category, :description, :name, :url

  def self.get_photos
    Photo.all
  end

  def self.get_categories
    Photo.select(:category).uniq
  end
end
