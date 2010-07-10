class Photograph < ActiveRecord::Base
  validates_uniqueness_of :code  
  validates_presence_of :code, :name, :url


  def self.all_cached
    Rails.cache.fetch("Photograph.all") { all }
  end

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
    photos = all_cached

    unless photos.count == 0

      if index.nil?
        offset = rand(photos.count)
      else
        offset = index.to_i
        
        unless (0..photos.count-1) === offset
          offset = 0
        end
      end 

      return photos[offset]

    end
  end
end
