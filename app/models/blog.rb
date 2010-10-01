class Blog < ActiveRecord::Base

  def self.recent
    find(:first, :order => "modified_date desc")
  end

end
