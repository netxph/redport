class Photo < ActiveRecord::Base
  attr_accessible :category, :description, :name, :url

  validates :name, :presence => true
  validates :category, :presence => true
  validates :url, :presence => true

  def self.get_photos
    Photo.all
  end

  def self.get_categories
    Photo.select(:category).uniq
  end
end
