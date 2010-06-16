class Feedback < ActiveRecord::Base
  validates_presence_of :email
  validates_presence_of :content
end
