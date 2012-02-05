class Picture < ActiveRecord::Base
  validates :location, :presence => true
end
