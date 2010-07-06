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

  def self.get_featured(index)
    unless count == 0

      if index.nil?
        offset = rand(count)
      else
        offset = index.to_i
        
        unless (0..count-1) === offset
          offset = 0
        end
      end 

      find(:first, :offset => offset)
    end
  end
end
