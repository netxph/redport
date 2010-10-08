class Blog < ActiveRecord::Base

  validates_presence_of :title, :body, :author, :email

  def self.recent
    find(:first, :order => "modified_date desc")
  end

end
