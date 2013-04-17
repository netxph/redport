class Photo < ActiveRecord::Base
  attr_accessible :description, :name, :url

  validates :name, :presence => true
  validates :category, :presence => true
  validates :url, :presence => true

  belongs_to :category

end
