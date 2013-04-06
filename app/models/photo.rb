class Photo < ActiveRecord::Base
  attr_accessible :category, :description, :name, :url

  validates_presence_of :name, :category, :url

  def self.get_photos
    Photo.all
  end

  def self.get_categories
    Photo.select(:category).uniq
  end
end
