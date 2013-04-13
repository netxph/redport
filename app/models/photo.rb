class Photo < ActiveRecord::Base
  attr_accessible :category, :description, :name, :url

  validates :name, :presence => true
  validates :category, :presence => true
  validates :url, :presence => true

  scope :get_categories, select(:category).uniq

end
