class Photo < ActiveRecord::Base
  attr_accessible :category, :description, :name, :url
end
