class Photograph < ActiveRecord::Base
  validates_uniqueness_of :code  
  validates_presence_of :code, :name, :url

  def self.import_from_web
    begin
      Gallery.photos.each do |photo|
        unless exists?(:code => photo.id)
          puts "importing #{photo.title}"
          create!(:code => photo.id, :name => photo.title, :description => photo.description, :url => photo.url(:large))
        end
      end
      return true
    rescue
      return false
    end
  end

  def self.get_featured
    if (c = count) != 0
      find(:first, :offset =>rand(c))
    end    
  end
end
